import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic 8 Ball',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade300,
          title: const Text(
            'Magic 8 Ball',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: const BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.pinkAccent,
                    Colors.teal,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(25.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                'images/ball$ballNumber.png',
              ),
            ),
          ),


          const SizedBox(
            height: 30,
          ),


          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Hey gamer,',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' Ask',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade600,
                  ),
                ),
                TextSpan(
                  text: ' Me',
                  style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' Anything!',
                  style: TextStyle(
                    color: Colors.green.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),


          const SizedBox(
            height: 30,
          ),


          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Click',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade900,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' on the ball',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade900,
                  ),
                ),
                TextSpan(
                  text: ' to get',
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' a new answer!',
                  style: TextStyle(
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
