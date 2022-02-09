import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'disc roll',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int discNumber = 1;

  void changedisc() {
    setState(() {
      discNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' Disc Roller',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Image.asset('images/$discNumber.png',
                  height: 250, width: 250)),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
              color: Colors.blue,
              onPressed: changedisc,
              child: Text(
                'Roll',
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(
            height: 200,
          ),
          Text(
            "Flutter with SP",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
