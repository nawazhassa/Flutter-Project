/*
import 'package:flutter/material.dart';

import 'Calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'MomoTrustDisplay-Regular'),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('212',style: TextStyle(fontSize: 25,color: Colors.white),),
                        Text('212',style: TextStyle(fontSize: 25,color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),

              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Calculator(title: 'AC'),
                        Calculator(title: '+/-'),
                        Calculator(title: '%'),
                        Calculator(title: '/' ,color: Colors.orangeAccent),
                      ],
                    ),
                    Row(
                      children: [
                        Calculator(title: '7'),
                        Calculator(title: '8'),
                        Calculator(title: '9'),
                        Calculator(title: '*' ,color: Colors.orangeAccent),
                      ],
                    ),
                    Row(
                      children: [
                        Calculator(title: '4'),
                        Calculator(title: '5'),
                        Calculator(title: '6'),
                        Calculator(title: '-' ,color: Colors.orangeAccent),
                      ],
                    ),
                    Row(
                      children: [
                        Calculator(title: '1'),
                        Calculator(title: '2'),
                        Calculator(title: '3'),
                        Calculator(title: '+' ,color: Colors.orangeAccent),
                      ],
                    ),
                    Row(
                      children: [
                        Calculator(title: '0'),
                        Calculator(title: '.'),
                        Calculator(title: 'DEL'),
                        Calculator(title: '=' ,color: Colors.orangeAccent),
                      ],
                    ),
                  ],

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
*/


import 'package:flutter/material.dart';
import 'Calculator.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String userInput = '';
  String answer = '';



  void equalPressed() {
    setState(() {
      Parser p = Parser();
      Expression exp = p.parse(userInput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      answer = eval.toString();
    });


  }






  void onButtonPressed(String value) {
    setState(() {
      if (value == 'DEL') {
        if (userInput.isNotEmpty) {
          userInput = userInput.substring(0, userInput.length -1);
        }
      } else if (value == 'AC') {
        userInput = '';
        answer = '';
      } else {
        userInput += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'MomoTrustDisplay-Regular'),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              // Display Area
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        userInput,
                        style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        answer,
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Buttons
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Calculator(title: 'AC', onPress: () => onButtonPressed('AC')),
                        Calculator(title: '+/-', onPress: () => onButtonPressed('+/-')),
                        Calculator(title: '%', onPress: () => onButtonPressed('%')),
                        Calculator(title: '/', color: Colors.orangeAccent, onPress: () => onButtonPressed('/')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Calculator(title: '7', onPress: () => onButtonPressed('7')),
                        Calculator(title: '8', onPress: () => onButtonPressed('8')),
                        Calculator(title: '9', onPress: () => onButtonPressed('9')),
                        Calculator(title: '*', color: Colors.orangeAccent, onPress: () => onButtonPressed('*')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Calculator(title: '4', onPress: () => onButtonPressed('4')),
                        Calculator(title: '5', onPress: () => onButtonPressed('5')),
                        Calculator(title: '6', onPress: () => onButtonPressed('6')),
                        Calculator(title: '-', color: Colors.orangeAccent, onPress: () => onButtonPressed('-')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Calculator(title: '1', onPress: () => onButtonPressed('1')),
                        Calculator(title: '2', onPress: () => onButtonPressed('2')),
                        Calculator(title: '3', onPress: () => onButtonPressed('3')),
                        Calculator(title: '+', color: Colors.orangeAccent, onPress: () => onButtonPressed('+')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Calculator(title: '0', onPress: () => onButtonPressed('0')),
                        Calculator(title: '.', onPress: () => onButtonPressed('.')),
                        Calculator(title: 'DEL', onPress: () => onButtonPressed('DEL')),
                        Calculator(title: '=', color: Colors.orangeAccent, onPress: () => equalPressed()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
