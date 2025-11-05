import 'package:flutter/material.dart';

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
      theme: ThemeData(
          fontFamily: 'MomoTrustDisplay-Regular'
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            title: Text('WhatApp'),
            centerTitle: false,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(0.8),
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt),),
                Tab(text: 'Chats'),
                Tab(text: 'Status',),
                Tab(text: 'Calls',),
              ],
            ),
          ),

          body: TabBarView(children: [
            // Text('camera'),
            Center(child: Text('home', style: TextStyle(color: Colors.red),),),
            Center(
                child: ListView(
                  children: [
                    ListView.builder(itemBuilder: (context, index) {
                      return ListTile(
                          leading: CircleAvatar(
                            radius: 5,
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/33539853/pexels-photo-33539853.jpeg'),)
                          );


                      },)
                  ],
                )

            ),
            Center(child: Text('logout', style: TextStyle(color: Colors.red),)),
            Center(child: Text('Calls', style: TextStyle(color: Colors.red),))
          ]),

          // body: TabBarView(children: children),
        ),
      ),
    );
  }
}

