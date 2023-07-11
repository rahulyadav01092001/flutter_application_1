import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/notification_page.dart';

import 'package:flutter_application_1/pages/register_page.dart';
import 'package:flutter_application_1/pages/setting_page.dart';
import 'package:flutter_application_1/widgets/theme.dart';

import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: '/home',
      routes: {
        'Login': (context) => LoginPage(),
        'Register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        'Settings': (context) => SettingsPage(),
        'Notification': (context) => NotificationsPage(),
      },
    );
  }
}
