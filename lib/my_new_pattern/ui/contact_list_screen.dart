import 'package:flutter/material.dart';
import 'package:genricclasstry/my_new_pattern/provider/contact_provider.dart';
import 'package:provider/provider.dart';

import '../services/network/response/api_response.dart';
import '../utils/widgets/no_internet_widget.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ContactProvider>().contactListApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ContactProvider>();
    return Scaffold(
      appBar: AppBar(title: const Text("Contacts")),
      body: _buildBody(provider),
    );
  }

  Widget _buildBody(ContactProvider provider) {
    final response = provider.response;

    switch (response.status) {
      case ApiStatus.loading:
        return const Center(child: CircularProgressIndicator());

      case ApiStatus.noInternet:
        return NoInternetWidget(
          isRetrying: provider.isLoadingMore,
          onRetry: () => context.read<ContactProvider>().contactListApi(),
        );

      case ApiStatus.timeout:
        return _GenericErrorView(
          icon: Icons.schedule_rounded,
          iconColor: const Color(0xFFD97706),
          title: 'Request Timed Out',
          message: 'The request took too long. Please try again.',
          onRetry: () => context.read<ContactProvider>().contactListApi(),
        );

      case ApiStatus.serverError:
        return _GenericErrorView(
          icon: Icons.cloud_off_rounded,
          iconColor: const Color(0xFF7C3AED),
          title: 'Server Error',
          message: 'Something went wrong on our end. Please try again later.',
          onRetry: () => context.read<ContactProvider>().contactListApi(),
        );

      case ApiStatus.error:
        return _GenericErrorView(
          icon: Icons.error_outline_rounded,
          iconColor: const Color(0xFFD97706),
          title: 'Something Went Wrong',
          message: response.message ?? 'An unexpected error occurred.',
          onRetry: () => context.read<ContactProvider>().contactListApi(),
        );

      case ApiStatus.success:
        final contacts = provider.contacts;
        if (contacts.isEmpty) {
          return const Center(child: Text("No Contacts Found"));
        }
        return RefreshIndicator(
          onRefresh: () => context.read<ContactProvider>().contactListApi(),
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (!provider.isLoadingMore &&
                  provider.hasMore &&
                  scrollInfo.metrics.pixels >=
                      scrollInfo.metrics.maxScrollExtent - 100) {
                provider.loadMore();
              }
              return false;
            },
            child: ListView.builder(
              itemCount: contacts.length + 1,
              itemBuilder: (context, index) {
                if (index < contacts.length) {
                  final contact = contacts[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text(contact.fullName ?? "No Name"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mobile: ${contact.contactPhoneNumber ?? "-"}"),
                          Text("Email: ${contact.email}"),
                          Text("Country: ${contact.country ?? "-"}"),
                          Text("Group: ${contact.groupName}"),
                        ],
                      ),
                    ),
                  );
                }

                if (provider.isLoadingMore) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                if (!provider.hasMore) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "No more data",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  );
                }

                return const SizedBox();
              },
            ),
          ),
        );

      default:
        return const SizedBox();
    }
  }
}

// ── Generic error view (timeout / server error / generic error) ───────────────

class _GenericErrorView extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String message;
  final VoidCallback onRetry;

  const _GenericErrorView({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.10),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 42, color: iconColor),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF0F172A),
                  ),
            ),
            const SizedBox(height: 10),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color(0xFF64748B),
                    height: 1.6,
                  ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh_rounded, size: 20),
                label: const Text(
                  'Try Again',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                style: FilledButton.styleFrom(
                  backgroundColor: iconColor,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
