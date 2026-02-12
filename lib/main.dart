import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

import 'my_new_pattern/provider/contact_provider.dart';
import 'my_new_pattern/provider/login_provider_test.dart';
 import 'my_new_pattern/ui/contact_list_screen.dart';
import 'my_new_pattern/ui/login_screen_test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // YOU MUST AWAIT THIS LINE
  await Hive.openBox('authBox');

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (_) => LoginProviderTest()),
        ChangeNotifierProvider(create: (_) => ContactProvider()),
      ],
      child: MaterialApp(
        // theme: ThemeData.dark(),


        // home: EnterPage(),
        home: LoginScreenTest(),
      ),
    );
  }
}
