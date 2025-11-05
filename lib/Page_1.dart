import 'package:flutter/material.dart';

class Page_1 extends StatelessWidget {
  // static const String id = 'Page_2';

  const Page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(

          onPressed: () {
            Navigator.pushReplacementNamed(context, '/Page_2');
            // Navigator.pop(context);
          },
          child: const Text('Page 1'),
        ),
      ),
    );
  }
}
