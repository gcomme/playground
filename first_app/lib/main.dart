import 'package:first_app/wthree.dart';
import 'package:flutter/material.dart';
import './wone.dart';
import './wtwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> fruits = ['apple', 'banana', 'orange', 'dog'];

  var number = 122;
  var count = 'appleere';
  var counter = 1;

  addCounter() {
    setState(() {
      counter = counter + 1;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbartitle'),
        ),
        body: Container(
            child: Column(
          children: [
            Text(counter.toString()),
            ElevatedButton(onPressed: addCounter, child: Text('Click')),
            Wone(counter.toString()),
            Wtwo(addCounter),
            Wthree(fruits),
          ],
        )),
      ),
    );
  }
}
