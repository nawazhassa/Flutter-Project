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
      theme: ThemeData(fontFamily: 'MomoTrustDisplay-Regular'),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            title: Text('WhatApp'),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {
                  print('search is pressed');
                },
                icon: Icon(Icons.search),
              ),
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text('New Group')),
                  PopupMenuItem(child: Text('New Broadcast')),
                ],
              ),
            ],

            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(0.8),
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: 'Chats'),
                Tab(text: 'Status'),
                Tab(text: 'Calls'),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              // Text('camera'),
              Center(
                child: Text('home', style: TextStyle(color: Colors.red)),
              ),
              ListView.builder(
                itemCount: 200,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/18858931/pexels-photo-18858931.jpeg',
                      ), 
                    ),
                    title: Text('Hassan Nawaz'),
                    subtitle: Text('JinFreshup'),
                    trailing: Text('05:10'),
                  );
                },
              ),
              Center(
                child: Text('logout', style: TextStyle(color: Colors.red)),
              ),
              Center(
                child: Text('Calls', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),

          // body: TabBarView(children: children),
        ),
      ),
    );
  }
}
