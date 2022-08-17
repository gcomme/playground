import 'package:flutter/material.dart';

class Wthree extends StatelessWidget {
  var fruit;
  Wthree(this.fruit);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.fruit[1]['fruit'],
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.blue),
    );
  }
}
