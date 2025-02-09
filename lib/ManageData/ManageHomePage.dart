import 'package:flutter/material.dart';
import 'package:flutter_application_1/ManageData/DrawerMenu.dart';
import 'package:flutter_application_1/ManageData/ManageMenuPage.dart';
import 'package:flutter_application_1/Pages/HomePage.dart';
import 'package:flutter_application_1/Pages/MessagePage.dart';
import 'package:flutter_application_1/Pages/ServicesPage.dart';
import 'package:flutter_application_1/Pages/WelcomePage.dart';

class ManageHomePage extends StatefulWidget {
  const ManageHomePage({super.key});

  @override
  State<ManageHomePage> createState() => _ManageHomePageState();
}

List<String> itm = ["Connect to database", "Internet connection", "Setting"];
List<String> itmenu = [
  "Data management",
  "Sell",
  "Buy",
  "Import",
  "Search",
  "Report",
];
List iconmenu = [
  Icon(
    Icons.folder,
    color: Colors.amber,
    size: 30,
  ),
  Icon(
    Icons.shopping_bag,
    color: Colors.amber,
    size: 30,
  ),
  Icon(
    Icons.forward,
    color: Colors.amber,
    size: 30,
  ),
  Icon(
    Icons.download,
    color: Colors.amber,
    size: 30,
  ),
  Icon(
    Icons.search,
    color: Colors.amber,
    size: 30,
  ),
  Icon(
    Icons.bar_chart,
    color: Colors.amber,
    size: 30,
  ),
];

List icon = [
  Icon(
    Icons.storage,
    color: Colors.amber,
    size: 30,
  ),
  Icon(
    Icons.wifi,
    color: Colors.amber,
    size: 30,
  ),
  Icon(
    Icons.settings,
    color: Colors.amber,
    size: 30,
  ),
];

List itmPg = [
  HomePage(),
  WelcomePage(),
  MessagePage(),
  ServicesPage(),
];

class _ManageHomePageState extends State<ManageHomePage> {
  int idx = 0;

  void ontabbed(int indx) {
    setState(() {
      idx = indx;
    });
  }

  void showMessage() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text('Test Show Dialog'),
          content: Text('Dialog'),
          actions: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'password', border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'password', border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'password', border: OutlineInputBorder()),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Enter'))
          ],
        );
      },
    );
  }

  Widget TabBarItem() {
    return TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          icon: iconmenu[0],
          text: itmenu[0],
        ),
        Tab(
          icon: iconmenu[1],
          text: itmenu[1],
        ),
        Tab(
          icon: iconmenu[2],
          text: itmenu[2],
        ),
        Tab(
          icon: iconmenu[3],
          text: itmenu[3],
        ),
        Tab(
          icon: iconmenu[4],
          text: itmenu[4],
        ),
        Tab(
          icon: iconmenu[5],
          text: itmenu[5],
        ),
        Tab(
          icon: iconmenu[5],
          text: itmenu[5],
        ),
        Tab(
          icon: iconmenu[5],
          text: itmenu[5],
        ),
        Tab(
          icon: iconmenu[5],
          text: itmenu[5],
        ),
      ],
    );
  }

  Widget MenuPopup() {
    return PopupMenuButton<String>(
      itemBuilder: (c) => [
        PopupMenuItem(
          child: Card(
            elevation: 10,
            shadowColor: Colors.orange,
            shape: Border.all(color: Colors.red),
            child: ListTile(
              leading: icon[0],
              subtitle: Text('Edit Database'),
              title: Text(
                '${itm[0]}',
                style: TextStyle(color: Colors.blue, fontSize: 22),
              ),
              onTap: () {
                Navigator.of(context).pop();
                showMessage();
              },
            ),
          ),
        ),
        PopupMenuDivider(),
        PopupMenuItem(
          child: Card(
            elevation: 10,
            shadowColor: Colors.orange,
            shape: Border.all(color: Colors.red),
            child: ListTile(
              leading: icon[1],
              title: Text(
                '${itm[1]}',
                style: TextStyle(color: Colors.blue, fontSize: 22),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        PopupMenuDivider(),
        PopupMenuItem(
          child: Card(
            elevation: 10,
            shadowColor: Colors.orange,
            shape: Border.all(color: Colors.red),
            child: ListTile(
              leading: icon[2],
              title: Text(
                '${itm[2]}',
                style: TextStyle(color: Colors.blue, fontSize: 22),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget BottomBar() {
    return BottomNavigationBar(
      selectedLabelStyle:
          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.red,
      selectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 20,
      ),
      currentIndex: idx,
      onTap: ontabbed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'ໜ້າຫຼັກ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.forward),
          label: 'ເຂົ້າສູ່ລະບົບ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'ຂໍ້ຄວາມ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_vert),
          label: 'ບໍລິການ',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ລະບົບຂາຍເຄື່ອງ'),
          actions: [
            MenuPopup(),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(60), child: TabBarItem()),
        ),
        body: itmPg == null
            ? CircularProgressIndicator()
            : TabBarView(
                children: [
                  Center(
                    child: ManageMenuPage(),
                  ),
                  Center(
                    child: Text('2222'),
                  ),
                  Center(
                    child: Text('3333'),
                  ),
                  Center(
                    child: Text('4444'),
                  ),
                  Center(
                    child: Text('5555'),
                  ),
                  Center(
                    child: Text('6666'),
                  ),
                  Center(
                    child: Text('7777'),
                  ),
                  Center(
                    child: Text('8888'),
                  ),
                  Center(
                    child: Text('9999'),
                  ),
                ],
              ),
        drawer: DrawerMenu(),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
