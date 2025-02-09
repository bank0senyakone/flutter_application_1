import 'package:flutter/material.dart';

class Customerpage extends StatefulWidget {
  const Customerpage({super.key});

  @override
  State<Customerpage> createState() => _CustomerpageState();
}

class _CustomerpageState extends State<Customerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer'),
      ),
      body: Center(
        child: Text('Customer'),
      )
    );
  }
}