import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'MomoTrustDisplay-Regular', // 👈 Global font here
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Learns Widgets',
            style: TextStyle(
              fontSize: 30,
              // fontFamily: 'MomoTrustDisplay-Regular',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Expended Widgets

              /*  Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    width: 200,
                    height: 200,
                    // color: Colors.amber,
                    child: Center(child: Text('This is a container!')),
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.1),
                      border: Border.all(color: Colors.amber, width: 5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber,
                          spreadRadius: 50,
                          blurRadius: 100,
                          offset: Offset(5, 5),
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.pexels.com/photos/33771131/pexels-photo-33771131.jpeg',
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),


                ),
              ),*/
              /*Expanded(
                flex: 3,
                child: Center(
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    width: 200,
                    height: 200,
                    // color: Colors.amber,
                    child: Center(child: Text('This is a container!')),
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.1),
                      border: Border.all(color: Colors.amber, width: 5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber,
                          spreadRadius: 50,
                          blurRadius: 100,
                          offset: Offset(5, 5),
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.pexels.com/photos/33771131/pexels-photo-33771131.jpeg',
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),


                ),
              ),*/

              // Stack Widgets

              /*Stack(
                children: [
                  Container(
                    width: 300,
                    height: 200,
                    color: Colors.blue, // base layer
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Text(
                      'Hello Stack!',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Icon(Icons.star, color: Colors.yellow, size: 40),
                  ),
                ],
              ),

              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(Icons.edit, size: 18, color: Colors.blue),
                    ),
                  ),
                ],
              ),*/

              // Rich Text  Widget
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello ',
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    TextSpan(
                      text: 'Flutter ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: 'Developers!',
                      style: TextStyle(
                        color: Colors.green,
                        fontStyle: FontStyle.italic,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),

              /*RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(text: 'Don’t have an account? '),
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),

      RichText(
      text: TextSpan(
      text: 'Click ',
        style: TextStyle(color: Colors.black, fontSize: 18),
        children: [
          TextSpan(
            text: 'here',
            style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('Link tapped!');
              },
          ),
          TextSpan(text: ' to learn more.'),
        ],
      ),
    )*/

              SizedBox(height: 100),

              // ElevatedButton Widgets


              /* ElevatedButton(
                onPressed: () {
                  print('Button Pressed!');
                },
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.indigo, // button color
                  // foregroundColor: Colors.white, // text color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // rounded corners
                  ),
                  elevation: 5, // shadow depth
                ),
                child: Text('Click Me', style: TextStyle(fontSize: 20)),
              ),

              SizedBox(height: 100),

              Material(
                elevation: 25, // shadow depth
                borderRadius: BorderRadius.circular(12),
                shadowColor: Colors.red,
                child: OutlinedButton(
                  onPressed: () {
                    print('Outlined button pressed!');
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    side: BorderSide(color: Colors.indigo, width: 2),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Outlined Button',
                    style: TextStyle(color: Colors.indigo, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 100),

              TextButton(
                onPressed: () {
                  print('Text button pressed!');
                },
                child: Text(
                  'Text Button',
                  style: TextStyle(fontSize: 18, color: Colors.indigo),
                ),
              ),

              SizedBox(height: 10),

              IconButton(
                onPressed: () {
                  print('Icon button clicked!');
                },
                icon: Icon(Icons.error),
                color: Colors.red,
                iconSize: 30,
              ),*/

              /*
              const SizedBox(
                width: 200.0,
                height: 300.0,
                child: Card(child: Text('Hello World!')),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
