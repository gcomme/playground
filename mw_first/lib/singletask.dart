import 'package:flutter/material.dart';

import 'package:flutter_tawk/flutter_tawk.dart';
import './task_data.dart';

class Task extends StatelessWidget {
  final index;

  const Task(this.index);

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
          Text(index.toString()),
          Text(tasks[this.index]['title'].toString()),
          Text(tasks[this.index]['descrip'].toString()),

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
