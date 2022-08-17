import 'package:flutter/material.dart';

//import 'main.dart';

class Wtwo extends StatelessWidget {
  // Trigger function in another widget
  final VoidCallback selectHandler;
  Wtwo(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('w2 widget'),
        ElevatedButton(onPressed: this.selectHandler, child: Text('W2 button')),
      ],
    );
  }
}
