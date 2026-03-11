import 'package:flutter/material.dart';
import 'package:genricclasstry/my_new_pattern/provider/contact_provider.dart';
import 'package:provider/provider.dart';

import '../utils/widgets/api_state_builder.dart';

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
      body: ApiStateBuilder(
        response: provider.response,
        onRetry: () => context.read<ContactProvider>().contactListApi(),
        builder: (_) => _ContactList(provider: provider),
      ),
    );
  }
}

// ── Success UI ────────────────────────────────────────────────────────────────

class _ContactList extends StatelessWidget {
  final ContactProvider provider;

  const _ContactList({required this.provider});

  @override
  Widget build(BuildContext context) {
    final contacts = provider.contacts;

    if (contacts.isEmpty) {
      return const Center(child: Text("No Contacts Found"));
    }

    return RefreshIndicator(
      onRefresh: () => context.read<ContactProvider>().contactListApi(),
      child: NotificationListener<ScrollNotification>(
        onNotification: (info) {
          if (!provider.isLoadingMore &&
              provider.hasMore &&
              info.metrics.pixels >= info.metrics.maxScrollExtent - 100) {
            provider.loadMore();
          }
          return false;
        },
        child: ListView.builder(
          itemCount: contacts.length + 1,
          itemBuilder: (context, index) {
            if (index < contacts.length) {
              final c = contacts[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text(c.fullName ?? "No Name"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mobile: ${c.contactPhoneNumber ?? "-"}"),
                      Text("Email: ${c.email}"),
                      Text("Country: ${c.country ?? "-"}"),
                      Text("Group: ${c.groupName}"),
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
  }
}
