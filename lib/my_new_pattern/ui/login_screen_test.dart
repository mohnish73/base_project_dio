import 'package:flutter/material.dart';
 import 'package:provider/provider.dart';

import '../core/storage/hive_service.dart';
import '../provider/login_provider_test.dart';
import '../services/network/response/api_response.dart';
import '../services/network/response/global_error_handle.dart';
import '../utils/custom_app_botton.dart';
import '../services/network/response/global_dialog.dart';
import 'contact_list_screen.dart';

class LoginScreenTest extends StatefulWidget {
  const LoginScreenTest({super.key});

  @override
  State<LoginScreenTest> createState() => _LoginScreenTestState();
}

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();


class _LoginScreenTestState extends State<LoginScreenTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Consumer<LoginProviderTest>(
            builder: (context, provider, _) {


              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 40),

                  const Text(
                    'Welcome Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Login to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 40),

                  /// Username
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(

                      labelText: 'Username',
                      prefixIcon: const Icon(Icons.person_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Password
                  TextField(
                      controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  CustomAppButton(
                    color: Colors.black,
                    title: 'Login',
                    isLoading: provider.response.status == ApiStatus.loading,
                    onPressed: () async {


                      // Call login and wait for it to finish
                      await context.read<LoginProviderTest>().login(
                        // userName: 'vseen', // Use your controllers here
                        // password: '123456',

                        userName: 'bittu13', // Use your controllers here
                        password: '78900',

                        // userName: usernameController.text.trim().toString(), // Use your controllers here
                        // password: passwordController.text.trim().toString(),
                      );

                      // After login finishes, check the status once
                      final response = context.read<LoginProviderTest>().response;

                      if (response.status == ApiStatus.success) {
                        if (context.mounted) {
                          Navigator
                              .push( // Use pushReplacement so they can't go back to login
                            context,
                            MaterialPageRoute(
                              builder: (_) => ContactListScreen(),
                            ),
                          );
                        }
                      }  else{

                        if (context.mounted) {
                          GlobalErrorHandler.handle(context, response);
                        }
                      }  },
                  ),

                  const SizedBox(height: 20),

                  TextButton(
                    onPressed: () {

                    },
                    child: const Text('Forgot Password?'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

