import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'MomoTrustDisplay-Regular'),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('Input Widget'),foregroundColor: Colors.white, centerTitle: true,backgroundColor: Colors.blueAccent,),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  style: TextStyle(color: Colors.blue),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue.withOpacity(0.1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green,width:2 ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blue,width: 2)
                    ),
                    hintText: 'Type Here ...',
                    labelText: 'Email Address',
                    labelStyle: const TextStyle(color: Colors.blue),
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Colors.blue,
                    suffixIcon: Icon(Icons.visibility_off),
                    suffixIconColor: Colors.blue,
                    hintStyle: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
