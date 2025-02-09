import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int _count = 0;
  void incrementNumber() {
    setState(() {
      _count++;
    });
  }

  void decrementNumber() {
    setState(() {
      _count--;
    });
  }

  void resetNumber() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text('Cafe Never walk alone'),
          actions: [
            IconButton(
                onPressed: () {
                  incrementNumber();
                },
                icon: Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  decrementNumber();
                },
                icon: Icon(Icons.remove)),
            IconButton(
                onPressed: () {
                  resetNumber();
                },
                icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
            colors: [Colors.red, Colors.green, Colors.blue],
            radius: 1,
          )),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Show number",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text('$_count',
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple )),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            incrementNumber();
          },
          child: Icon(
            Icons.add,
            color: Colors.blue,
            size: 30,
          ),
        ));
  }
}
