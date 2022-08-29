import 'dart:html';

import 'package:flutter/material.dart';

import 'package:flutter_tawk/flutter_tawk.dart';
import './task_data.dart';

class Task extends StatefulWidget {
  final index;

  Task(this.index);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  var userCommentController = TextEditingController();

  // update comment
  addComment() {
    //tasks[this.index].insert({'comment': 'fdsafasfa'});
    // tasks[0]['comments'].add({'id': '2'});
    setState(() {
      tasks[this.widget.index]['comments'].add({
        'id': '1',
        'user': userCommentController.text,
        'comment': userCommentController.text
      });
    });
    print(tasks);
  }

  // updateComment() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Column(
        children: [
          /* Tawk(
            directChatLink:
                'https://tawk.to/chat/62b744fdb0d10b6f3e794c6f/1g6dub0a5',
            visitor: TawkVisitor(
              name: 'Ayoub AMINE',
              email: 'ayoubamine2a@gmail.com',
            ),
            onLoad: () {
              print('Hello Tawk!');
            },
            onLinkTap: (String url) {
              print(url);
            },
            placeholder: const Center(
              child: Text('Loading...'),
            ),
          ), */
          Text(widget.index.toString()),
          Text(tasks[this.widget.index]['title'].toString()),
          Text(tasks[this.widget.index]['descrip'].toString()),
          TextField(
              decoration: InputDecoration(labelText: 'Add Comment'),
              controller: userCommentController),
          ElevatedButton(onPressed: addComment, child: Text('Add Comment')),
          Expanded(
            child: Column(
              children: <Widget>[
                for (final task in tasks)
                  for (final comments in task['comments'])
                    Text(comments['user']),
              ],
            ),
          ),

          // Text(counter.toString()),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ),
        ],
      ),
    );
  }
}
