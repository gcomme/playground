import 'dart:developer';

import 'package:flutter/material.dart';
//import 'package:mw_first/omain.dart';
import './profile.dart';
import './singletask.dart';

void main() {
  return runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tasks = [
    {'id': '0022', 'title': 'Create logo for me', 'status': 'pending'},
    {'id': '0022', 'title': 'Do the dishes', 'status': 'pending'},
    {'id': '0023', 'title': 'Kill the birds', 'status': 'pending'},
  ];

  int counter = 0;
  var mytext = 'sarmad';

  getText(v) {
    setState(() {
      mytext = v;
    });
  }

  addCounter() {
    setState(() {
      counter = counter + 1;
    });
    print(counter);
  }

  addToList() {
    tasks.add({'id': '0024', 'title': 'Kill the birds', 'status': 'pending'});
    print(tasks.last);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Text(mytext.toString()),
            Text(counter.toString()),
            ElevatedButton(onPressed: null, child: Text('Open Modal')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profile(mytext, counter)),
                  );
                },
                child: Text('Next Page')),
            ElevatedButton(
                onPressed: addCounter, child: const Text('Add Counter')),
            ElevatedButton(onPressed: addToList, child: Text('Add to list')),
            TextFormField(
              decoration: InputDecoration(labelText: 'Name '),
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Task(index)),
                        );
                      },
                      title: Text(tasks[index]['title'].toString()),

                      // subtitle: ,
                    );

                    // Text(tasks[index]['title'].toString());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
