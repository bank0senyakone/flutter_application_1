import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List data = [];
  final String url = 'http://localhost:3000/book';

  @override
  void initState() {
    fetchallData();
    super.initState();
  }

  Future<void> fetchallData() async {
    try {
      final respons = await http.get(Uri.parse(url));
      if (respons.statusCode == 200) {
        setState(() {
          data = json.decode(respons.body);
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book management'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.book_online,
                    color: Colors.blue,
                    size: 35,
                  ),
                  labelText: "Search",
                  suffix: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 30,
                          )),
                    ],
                  )),
            ),
          ),
        ),
      ),
      body: data == null
          ? CircularProgressIndicator()
          : Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (c, indx) {
                  final getdata = data[indx];
                  return ListTile(
                    leading: Text(
                      '${getdata['bookid']}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.red),
                    ),
                    title: Text(
                      '${getdata['bookname']}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.red),
                    ),
                    trailing: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  );
                },
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35,
          color: Colors.blue,
        ),
      ),
    );
  }
}
