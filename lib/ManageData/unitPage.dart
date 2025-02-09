import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Unitpage extends StatefulWidget {
  const Unitpage({super.key});

  @override
  State<Unitpage> createState() => _UnitpageState();
}

class _UnitpageState extends State<Unitpage> {
  File? _file;
  ImagePicker imgPicker = ImagePicker();
  Future<void> fetchPhoto(ImageSource source) async {
    try {
      var obj = await imgPicker.pickImage(
        source: source,
        maxHeight: 800,
        maxWidth: 800,
      );
      if (obj != null) {
        setState(() {
          _file = File(obj.path);
        });
      }
    } catch (e) {
      print(e);
    }
  }

  void selectMenuImage() {
    showModalBottomSheet(
        context: context,
        builder: (c) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Column(
              children: [
                Text(
                  'Select Image from',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.camera),
                          title: Text(
                            'Camera',
                            style: TextStyle(fontSize: 15),
                          ),
                          onTap: () {
                            fetchPhoto(ImageSource.camera);

                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.browse_gallery),
                          title: Text('Gallary'),
                          onTap: () {
                            fetchPhoto(ImageSource.gallery);

                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product'),
        ),
        body: Center(
          child: Stack(children: [
            Container(
              width: 200,
              height: 250,
              child: _file != null
                  ? Image.file(_file as File)
                  : Image.asset('lib/images/G.png'),
            ),
            Positioned(
              bottom: 10,
              right: 1,
              child: IconButton(
                  onPressed: () {
                    selectMenuImage();
                  },
                  icon: Icon(
                    Icons.camera_alt,
                    size: 25,
                    color: Colors.teal,
                  )),
            )
          ]),
        ));
  }
}
