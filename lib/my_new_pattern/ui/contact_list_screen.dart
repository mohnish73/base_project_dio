import 'package:flutter/material.dart';
import 'package:genricclasstry/my_new_pattern/provider/contact_provider.dart';
import 'package:provider/provider.dart';

import '../services/network/response/api_response.dart';


class ContactListScreen extends StatefulWidget {

  const ContactListScreen({super.key,});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}
class _ContactListScreenState extends State<ContactListScreen> {


  @override
  void initState() {
    super.initState();
    inFun();
  }

  inFun(){
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ContactProvider>().contactListApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ContactProvider>();
    final response = provider.response;

    return Scaffold(
      appBar: AppBar(title: const Text("Contacts")),
      body: _buildBody(provider, response),
    );
  }


  Widget _buildBody(
      ContactProvider provider,
      ApiResponse response,
      ) {
    switch (response.status) {
      case ApiStatus.loading:
        return const Center(child: CircularProgressIndicator());

      case ApiStatus.noInternet:
        return _errorView(
          message: "No internet connection",
          buttonText: "Retry",
          onTap: () => context.read<ContactProvider>().contactListApi(),
        );

      case ApiStatus.error:
        return _errorView(
          // message: response.message ?? "Something went wrong",
          message:  "Something went wrong",
          buttonText: "Retry",
          onTap: () => context.read<ContactProvider>().contactListApi(),
        );

      case ApiStatus.timeout:
        return _errorView(
          message: "Request timeout. Please try again.",
          buttonText: "Retry",
          onTap: () => context.read<ContactProvider>().contactListApi(),
        );


      case ApiStatus.success:
        final contacts = provider.contacts;
        if (contacts.isEmpty) {
          return const Center(child: Text("No Contacts Found"));
        }

        return RefreshIndicator(
          onRefresh: () async {
            await context.read<ContactProvider>().contactListApi();
          },
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
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text("Mobile: ${contact.contactPhoneNumber ?? "-"}"),
                          Text("Email: ${contact.email ?? "-"}"),
                          Text("Country: ${contact.country ?? "-"}"),
                        ],
                      ),
                    ),
                  );
                }

                /// Bottom Section
                if (provider.isLoadingMore) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
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

  Widget _errorView({
    required String message,
    required String buttonText,
    required VoidCallback onTap,
  }) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.wifi_off, size: 60, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onTap,
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }

}

