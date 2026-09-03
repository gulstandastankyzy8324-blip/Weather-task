import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Counter()));
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _Counter();
}

class _Counter extends State<Counter> {
  int count = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 201, 255),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Counter',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
            fontWeight: FontWeight(500),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tap "-" to decrement',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(right: 70, left: 70),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: Colors.black,
                    iconSize: 40,
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },
                  ),
                  Text(
                    '$count',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight(500)),
                  ),

                  IconButton(
                    iconSize: 40,
                    color: Colors.black,
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Tap "+" to increment',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
