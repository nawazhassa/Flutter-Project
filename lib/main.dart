import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  int num = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),

        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Lottery Winning  number is 4')),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                  border: Border(bottom: BorderSide(color: Colors.cyan)),
                ),
                width: 250,
                height: 250,
                // color: Colors.grey.withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: num == 4 ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.done_all, color: Colors.green),
                      SizedBox(height: 10),
                      Text(
                        'You Won Lottery Winning number is $num',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ) :Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error, color: Colors.red),
                      SizedBox(height: 10),
                      Text(
                        'Batter luck next Time Try again your pick number is $num',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              num = Random().nextInt(10);
            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
