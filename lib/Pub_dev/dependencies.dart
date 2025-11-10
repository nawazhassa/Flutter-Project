/*
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

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
        appBar: AppBar(
          title: Text('Pub_dev'),
          centerTitle: true,
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Icon(Icons.home),
              Icon(FontAwesomeIcons.search),
              ReadMoreText(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              ),
              badges.Badge(
                position: badges.BadgePosition.topEnd(top: -12, end: -12),
                badgeAnimation: const badges.BadgeAnimation.slide(
                  animationDuration: Duration(milliseconds: 3000),
                ),
                // Badge content (like a notification count)
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),

                // Styling the badge
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: Colors.red,
                  padding: EdgeInsets.all(8),
                ),

                // The child widget (like an icon or image)
                child: const Icon(
                  Icons.notifications,
                  size: 48,
                  color: Colors.teal,
                ),
              ),

              // badges.Badge(
              //   badgeContent: Text('3'),
              //   child: Icon(Icons.settings),
              // )

              // Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',maxLines: 2,softWrap: true,)
            ],
          ),
        ),
      ),
    );
  }
}
*/


import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BadgeExample(),
    );
  }
}

class BadgeExample extends StatefulWidget {
  const BadgeExample({super.key});

  @override
  State<BadgeExample> createState() => _BadgeExampleState();
}

class _BadgeExampleState extends State<BadgeExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Badge Example')),
      body: Center(
        child: badges.Badge(
          badgeAnimation: const badges.BadgeAnimation.slide(
            animationDuration: Duration(milliseconds: 800),
          ),
          position: badges.BadgePosition.topEnd(top: -12, end: -12),
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(8),
          ),
          badgeContent: Text(
            '$_count',
            style: const TextStyle(color: Colors.white),
          ),
          child: const Icon(
            Icons.notifications,
            size: 50,
            color: Colors.teal,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
