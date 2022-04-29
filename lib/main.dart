import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Mobile Apps'),
          backgroundColor: Colors.deepPurple[700],
        ),
        body: const Dices(),
      ),
    ),
  );
}

class Dices extends StatefulWidget {
  const Dices({Key? key}) : super(key: key);
  @override
  DicesState createState() => DicesState();
}

class DicesState extends State<Dices> {
  var randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 100),
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
              onPressed: () {
                setState(() {
                  randomNumber = Random().nextInt(10) + 1;
                });
              },
              child: const Text(
                'Click to generate a random number',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
          ]),
        ),
        Row(
          children: const [
            Expanded(
              child: Image(
                image: AssetImage('images/Flutter.jpg'),
              ),
            ),
            Expanded(
              child: Image(
                image: AssetImage('images/ReactNative.png'),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                (randomNumber != 0) ? 'The number is: $randomNumber' : '',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.9,
          child: Container(
            color: Colors.deepPurple[700],
            margin: const EdgeInsets.only(top: 100),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Desenvolvido por Rodrigo Brentano',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
