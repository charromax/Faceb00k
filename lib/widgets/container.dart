import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(),
      child: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.white,
          child: Text("Hola Zorras"),
        ),
      ),
    );
  }
}
