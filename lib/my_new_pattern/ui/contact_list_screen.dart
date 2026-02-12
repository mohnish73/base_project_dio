import 'package:flutter/material.dart';
import 'package:genricclasstry/my_new_pattern/provider/contact_provider.dart';
import 'package:provider/provider.dart';

import '../services/network/response/api_response.dart';
import '../services/network/response/global_dialog.dart';


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
    return Scaffold(
      appBar: AppBar(title: const Text("Contacts")),
      body: Selector<ContactProvider, ApiResponse>(
        selector: (_, provider) => provider.response,
        builder: (context, response, _) {

          // don't remove this

          // WidgetsBinding.instance.addPostFrameCallback((_) {
          //   if (response.status == ApiStatus.error ||
          //       response.status == ApiStatus.noInternet ||
          //       response.status == ApiStatus.unauthorized) {
          //     GlobalDialog.showError(context, response);
          //   }
          // });

          return _buildBody(response);
        },
      ),
    );

  }

  Widget _buildBody(ApiResponse response) {
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
          message: response.message ?? "Something went wrong",
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
        final contacts =  response.data?.data?.contactDetails ?? [];

        if (contacts.isEmpty) {
          return const Center(child: Text("No Contacts Found"));
        }

        return ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
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
                    Text(
                        "Mobile: ${contact.contactPhoneNumber ?? "-"}"),
                    Text(
                        "Email: ${contact.email ?? "-"}"),
                    Text(
                        "Country: ${contact.country ?? "-"}"),
                  ],
                ),
              ),
            );
          },
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

