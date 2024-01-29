import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/Starting%20Screens/login_signup_button_screen.dart';
import 'package:ott_app/Starting%20Screens/signup_screen.dart';
import 'package:ott_app/head_page.dart';
import 'package:provider/provider.dart';

import 'constant/provider_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => termsProvider(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginSignupScreen(),
      ),
    );
  }
}
