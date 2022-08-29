import 'package:flutter/material.dart';
import 'dart:developer';

import './profile.dart';
import './singletask.dart';
import './task_data.dart';

class Homepage extends StatefulWidget {
  //const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  /* var tasks = [
    {
      'id': '0022',
      'title': 'Create logo for me',
      'descrip': 'all the task',
      'status': 'pending'
    },
  ];
  */

  var tasknameController = TextEditingController();
  var taskdescripController = TextEditingController();

  createTask() {
    setState(() {
      tasks.add({
        'id': '0024',
        'title': tasknameController.text,
        'descrip': taskdescripController.text,
        'status': 'pending'
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('MyApp')),
          body: Column(
            children: [
              Text('sdfghjkl'),
              TextField(
                decoration: InputDecoration(labelText: 'Task Name'),
                controller: tasknameController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Description'),
                controller: taskdescripController,
              ),
              ElevatedButton(
                onPressed: createTask,
                child: Text('Create Task'),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext ctxt, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Task(index)),
                          );
                        },
                        title: Text(tasks[index]['title'].toString()),

                        // subtitle: ,
                      );

                      // Text(tasks[index]['title'].toString());
                    }),
              ),
            ],
          )),
    );
  }
}
