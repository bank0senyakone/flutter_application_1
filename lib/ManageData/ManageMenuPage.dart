import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/ManageData/CategoryPage.dart';
import 'package:flutter_application_1/ManageData/CustomerPage.dart';
import 'package:flutter_application_1/ManageData/EmployeePage.dart';
import 'package:flutter_application_1/ManageData/ExchangePage.dart';
import 'package:flutter_application_1/ManageData/ProductPage.dart';
import 'package:flutter_application_1/ManageData/SupplierPage.dart';
import 'package:flutter_application_1/ManageData/unitPage.dart';

List items = [
  "ຂໍ້ມູນຫົວໜ່ວຍ",
  "ຂໍ້ມູນປະເພດສິນຄ້າ",
  "ຂໍ້ມູນສິນຄ້າ",
  "ອັດຕາແລກປຽ່ນ",
  "ພະນັກງານ",
  "ລູກຄ້າ",
  "ຜູ້ສະໜອງ"
];

List iCoColors = [Colors.yellow];
List icoSize = [100];
List routePage = [
  Unitpage(),
  CategoryPage(),
  ProductPage(),
  Exchangepage(),
  Employeepage(),
  Customerpage(),
  Supplierpage()
];

List icon = [
  Icon(
    Icons.ac_unit,
    size: icoSize[0],
    color: iCoColors[0],
  ),
  Icon(
    Icons.category,
    size: icoSize[0],
    color: iCoColors[0],
  ),
  Icon(
    Icons.folder,
    size: icoSize[0],
    color: iCoColors[0],
  ),
  Icon(
    Icons.currency_exchange,
    size: icoSize[0],
    color: iCoColors[0],
  ),
  Icon(
    Icons.person,
    size: icoSize[0],
    color: iCoColors[0],
  ),
  Icon(
    Icons.person_add,
    size: icoSize[0],
    color: iCoColors[0],
  ),
  Icon(
    Icons.local_shipping,
    size: icoSize[0],
    color: iCoColors[0],
  ),
];

class ManageMenuPage extends StatefulWidget {
  const ManageMenuPage({super.key});

  @override
  State<ManageMenuPage> createState() => _ManageMenuPageState();
}

class _ManageMenuPageState extends State<ManageMenuPage> {
  void selectPage(int idx) {
    setState(() {
      MaterialPageRoute route =
          MaterialPageRoute(builder: (_) => routePage[idx]);
      Navigator.of(context).push(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(5),
        child: GridView.builder(
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (c, idx) {
              return InkWell(
                onTap: () {
                  selectPage(idx);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue.shade700,
                      border: Border.all(color: Colors.orange, width: 2)),
                  child: Column(
                    children: [
                      icon[idx],
                      Spacer(),
                      Text(
                        items[idx],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
