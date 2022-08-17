import 'package:flutter/material.dart';

class Wone extends StatelessWidget {
  var counter;
  Wone(this.counter);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.counter),
        ElevatedButton(onPressed: null, child: Text('W1 button')),
      ],
    );
  }
}
