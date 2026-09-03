import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: First()));
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            color: Colors.red,
            fontSize: 50,
            fontWeight: FontWeight(800),
          ),
        ),
      ),
    );
  }
}
