import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ManageData/ManageMenuPage.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              //color: Colors.green,
              image: DecorationImage(
                  image: AssetImage(
                    'lib/images/WlDf.jpeg',
                  ),
                  fit: BoxFit.cover),
            ),
            accountName: Text(
              'Cafe Never Walk Alone',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'NeverWalkAlone@gmail.com',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: CircleAvatar(
                  child: ClipOval(
                child: Image.asset('lib/images/PTS.jpg'),
              )),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.folder,
                      color: Colors.yellow.shade900,
                      size: 20,
                    ),
                    title: Text(
                      'ຈັດການຂໍ້ມູນພື້ນຖານ',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (_) => ManageMenuPage());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(),
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_basket,
                      color: Colors.yellow.shade900,
                      size: 20,
                    ),
                    title: Text(
                      'ຂາຍ',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Divider(),
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_forward,
                      color: Colors.yellow.shade900,
                      size: 20,
                    ),
                    title: Text(
                      'ສັ່ງຊື້',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Divider(),
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.download,
                      color: Colors.yellow.shade900,
                      size: 20,
                    ),
                    title: Text(
                      'ນຳເຂົ້າ',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Divider(),
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.yellow.shade900,
                      size: 20,
                    ),
                    title: Text(
                      'ຄົ້ນຫາ',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Divider(),
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.bar_chart,
                      color: Colors.yellow.shade900,
                      size: 20,
                    ),
                    title: Text(
                      'ລາຍງານ',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
