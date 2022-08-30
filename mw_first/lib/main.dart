import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mw_first/screens/homeScreen.dart';
//import 'package:mw_first/omain.dart';
import './profile.dart';
import './singletask.dart';
import './homepage.dart';
import './screens/homeScreen.dart';

void main() {
  return runApp(MaterialApp(
    title: 'Navigation Basics',
    home: HomeScreen(),
  ));
}

/*
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

  List<String> numbers = ['dd', 'df', 'ff'];

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
/*
  addToList() {
    tasks.add({'id': '0024', 'title': 'Kill the birds', 'status': 'pending'});
    print(tasks.last);
  }
 */

  var mycontroller = TextEditingController();

  addToList() {
    setState(() {
      tasks
          .add({'id': '0024', 'title': mycontroller.text, 'status': 'pending'});
    });

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
            Text(mycontroller.text),
            Text(mytext.toString()),
            Text(counter.toString()),
            ElevatedButton(onPressed: null, child: Text(mycontroller.text)),
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
            // ElevatedButton(onPressed: addToList, child: Text('Add to list')),
            TextFormField(),
            TextField(
              decoration: InputDecoration(labelText: 'Name '),
              controller: mycontroller,
            ),
            const Divider(
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Name '),
              controller: mycontroller,
            ),
            ElevatedButton(
              onPressed: addToList,
              //onPressed: createTask(mycontoller),
              child: Text('Create'),
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
*/