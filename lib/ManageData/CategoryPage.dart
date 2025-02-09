import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

final List<String> option = ["A", "B", "C", "D"];

class _CategoryPageState extends State<CategoryPage> {
  String? selectopt1, selectopt2, selectopt3;
  TextEditingController txtDate = TextEditingController();
  String age = "";
  Future<void> selectDateOBirth() async {
    try {
      DateTime? date1 = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1980),
        lastDate: DateTime.now(),
      );

      setState(() {
        if (date1 != null) {
          txtDate.text = DateFormat("dd/MM/yyyy").format(date1);
          /*int d1 = int.parse(DateFormat("dd").format(date1));
          int m1 = int.parse(DateFormat("MM").format(date1));
          int y1 = int.parse(DateFormat("yy").format(date1));
          int ynow = int.parse(DateFormat("yy").format(DateTime.now()));*/
          int _age = DateTime.now().year - date1.year;
          age = _age.toString();
          print("Age = $age year olds");

          //txtDate.text = date1.toString().split(" ")[0];
        } else {
          txtDate.text = DateFormat("dd/MM/yyyy").format(DateTime.now());
        }
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Date/Time Test'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(65),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: txtDate,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.calendar_today,
                    size: 25,
                    color: Colors.green,
                  ),
                  labelText: "Birth of date",
                ),
                readOnly: true,
                onTap: () {
                  selectDateOBirth();
                },
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "1. Please select the correct choice of 5+2 ?",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 10),
              Column(
                children: option.map((opt) {
                  return RadioListTile(
                    value: opt,
                    title: Text('${opt}'),
                    groupValue: selectopt1,
                    onChanged: (val) {
                      setState(() {
                        selectopt1 = val;
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {
                  if (selectopt1 == "B") {
                    showDialog(
                        context: context,
                        builder: (c) => AlertDialog(
                              title: Text('The answer '),
                              content: Text('The answer 5 + 2 = 7 is correct'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Enter"),
                                ),
                              ],
                            ));
                  } else {
                    showDialog(
                        context: context,
                        builder: (c) => AlertDialog(
                              title: Text('The answer wrong'),
                              content: Text('Try again'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Enter"),
                                ),
                              ],
                            ));
                  }
                },
                child: Text("Select Answer"),
              ),
              SizedBox(height: 18),
              Text(
                "2. Please select the correct choice of 5+5 ?",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 10),
              Column(
                children: option.map((opt) {
                  return RadioListTile(
                    value: opt,
                    title: Text('${opt}'),
                    groupValue: selectopt2,
                    onChanged: (val) {
                      setState(() {
                        selectopt2 = val;
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {
                  if (selectopt2 == "A") {
                    showDialog(
                        context: context,
                        builder: (c) => AlertDialog(
                              title: Text('The answer '),
                              content: Text('The answer 5 + 5 = 10 is correct'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Enter"),
                                ),
                              ],
                            ));
                  } else {
                    showDialog(
                        context: context,
                        builder: (c) => AlertDialog(
                              title: Text('The answer wrong'),
                              content: Text('Try again'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Enter"),
                                ),
                              ],
                            ));
                  }
                },
                child: Text("Select Answer"),
              ),
              SizedBox(height: 18),
              Text(
                "3. Please select the correct choice of 110/2 ?",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 10),
              Column(
                children: option.map((opt) {
                  return RadioListTile(
                    value: opt,
                    title: Text('${opt}'),
                    groupValue: selectopt3,
                    onChanged: (val) {
                      setState(() {
                        selectopt3 = val;
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {
                  if (selectopt3 == "D") {
                    showDialog(
                        context: context,
                        builder: (c) => AlertDialog(
                              title: Text('The answer '),
                              content:
                                  Text('The answer 110 / 2 = 55 is correct'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Enter"),
                                ),
                              ],
                            ));
                  } else {
                    showDialog(
                        context: context,
                        builder: (c) => AlertDialog(
                              title: Text('The answer wrong'),
                              content: Text('Try again'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Enter"),
                                ),
                              ],
                            ));
                  }
                },
                child: Text("Select Answer"),
              ),
              SizedBox(height: 18),
            ],
          ),
        ));
  }
}
