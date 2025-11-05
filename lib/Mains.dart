import 'package:flutter/material.dart';
import 'package:flutter_first_project/Page_1.dart';
import 'Home_Screen.dart';
import 'Page_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'MomoTrustDisplay-Regular'),
      initialRoute: '/',
      routes: {
       '/': (context) => Home_Screen(),
        '/Home_Screen': (context) => Home_Screen(),
        '/Page_2': (context) => Page_2(),
        '/Page_1': (context) => Page_1(),
      },
    );
  }
}
