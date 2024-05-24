import 'package:flutter/material.dart';

class CustomAspectRatio extends StatelessWidget {
  const CustomAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          child: AspectRatio(
            aspectRatio: 16/9,
            child: Image.network(
              "https://refactoring.guru/images/patterns/content/factory-method/factory-method-en-2x.png?id=b3961995a4449fb90820a693013511df",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
