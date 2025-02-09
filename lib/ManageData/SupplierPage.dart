import 'package:flutter/material.dart';

class Supplierpage extends StatefulWidget {
  const Supplierpage({super.key});

  @override
  State<Supplierpage> createState() => _SupplierpageState();
}

class _SupplierpageState extends State<Supplierpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supplier'),
      ),
      body: Center(
        child: Text('Supplier'),
      )
    );;
  }
}