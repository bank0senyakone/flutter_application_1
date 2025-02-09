import 'package:flutter/material.dart';

class Employeepage extends StatefulWidget {
  const Employeepage({super.key});

  @override
  State<Employeepage> createState() => _EmployeepageState();
}

class _EmployeepageState extends State<Employeepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee'),
      ),
      body: Center(
        child: Text('Employee'),
      )
    );;
  }
}