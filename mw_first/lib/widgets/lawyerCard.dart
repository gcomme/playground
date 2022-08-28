import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LawyerCard extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.white,
        padding: EdgeInsets.all(10),
        height: 100,
        child: Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 120.0,
                height: 120.0,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.ibb.co/6Y4Fhcw/Screenshot-2022-06-14-at-2-17-50-PM.png'),
                ),
              ),
              Expanded(
                child: Column(children: [
                  Text(textAlign: TextAlign.left, "Zainab S."),
                  Text(textAlign: TextAlign.left, "Advocate High Courts"),
                  Text(textAlign: TextAlign.left, "LL.M Harvard, LL.B London"),
                  TextButton(onPressed: null, child: Text("View Profile")),
                ]),
              ),
            ],
          ),
        ));
  }
}
