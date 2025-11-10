import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

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
        appBar: CustomAppBar(title: 'Home Screen'), // Just call it here
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
