import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ice();
  }
}

class ice extends StatefulWidget {
  const ice({Key? key}) : super(key: key);
  @override
  State<ice> createState() => _iceState();
}

class _iceState extends State<ice> {
  int leftdiceumber = Random().nextInt(6)+1; //Range : 0-5
  int rightdiceumber = Random().nextInt(6)+1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Dice",
              style: TextStyle(
                fontSize: 35,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(4),
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      leftdiceumber = Random().nextInt(6)+1;
                      rightdiceumber = Random().nextInt(6)+1;
                    });
                  },
                  child: Image(
                    image: AssetImage('image/dice$leftdiceumber.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      rightdiceumber = Random().nextInt(6)+1;
                      leftdiceumber = Random().nextInt(6)+1;
                    });
                  },
                    child: Image.asset('image/dice$rightdiceumber.png')),
              ),
            ),
            const SizedBox(
              height: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}

//button - text button
// gesture detector