import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final mytext;
  var counter;
  Profile(this.mytext, this.counter);

  //const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Column(
        children: [
          Text(mytext),
          Text(counter.toString()),
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
