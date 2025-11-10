/*
import 'package:flutter/material.dart';

*/
/*
void main() {
  runApp(Calculator());
}
*//*


class Calculator extends StatelessWidget {

  String title = '';
  Color color;

   Calculator({super.key, required this.title,  this.color = const Color(0xFF7E7F80)});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            height: 75,
            width: 75,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;

  const Calculator({
    super.key,
    required this.title,
    this.color = const Color(0xFF7E7F80),
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
