import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Center(
            child: Text.rich(
              TextSpan(text: 'My', children: [
                TextSpan(
                    text: 'Viro',
                    style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'App',
                    style: TextStyle(fontSize: 30.0, color: Colors.blue)),
                TextSpan(),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
