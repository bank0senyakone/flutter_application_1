import 'package:flutter/material.dart';

class Exchangepage extends StatefulWidget {
  const Exchangepage({super.key});

  @override
  State<Exchangepage> createState() => _ExchangepageState();
}

class _ExchangepageState extends State<Exchangepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Excahnge'),
        ),
        body: Center(
          child: Text('Exchange'),
        ));
    ;
  }
}
