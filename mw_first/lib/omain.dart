/*
//import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:mw_first/widgets/lawyerCard.dart';
import 'package:mw_first/widgets/singletaskScreen.dart';
import 'package:mw_first/widgets/taskList.dart';

/*
void main() {
  runApp(MyApp());
}
*/

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // List<String> fruits = ['apple', 'banana', 'oraneeege', 'dog'];
  var tasks = [
    {'id': '0021', 'title': 'Create logo for me', 'status': 'pending'},
    {'id': '0022', 'title': 'Do the dishes', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
  ];

  var number = 122;
  var count = 'appleere';
  var counter = 1;
  var url = 'https://mw2022-cc402-default-rtdb.firebaseio.com/';

  // get builder => null;

/*
  addCounter() {
    setState(() {
      counter = counter + 1;
    });
    print(counter);
  }
  */

  // ignore: prefer_typing_uninitialized_variables
  var namefield = 'ffdasf';

  changeTitle(String value) {
    setState(() {
      String value = namefield;
    });
    print(namefield);
  }

  var namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(namefield),
            ),
            body: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name '),
                  controller: namecontroller,
                  onChanged: (value) {
                    changeTitle(value);
                    //namefield = value;
                    //print(namefield);
                    //print(value);
                  },
                ),
                ElevatedButton(onPressed: null, child: Text(namefield)),
                singletaskScreen(),
                Expanded(
                  child: ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return ListTile(
                          title: Text(tasks[index]['title'].toString()),

                          // subtitle: ,
                        );

                        // Text(tasks[index]['title'].toString());
                      }),
                ),
              ],
            )));
  }
}

*/
