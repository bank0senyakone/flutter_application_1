import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.red,
            titleTextStyle: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
            iconTheme: IconThemeData(
              color: Colors.white,
              size: 35,
            )),
      ),
      home: Loginpage(),
    );
  }
}
