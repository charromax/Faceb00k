import 'package:flutter/material.dart';

class MyText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hola zorras",
        style: TextStyle(fontSize: 30, color: Colors.purpleAccent),
      ),
    );
  }

}