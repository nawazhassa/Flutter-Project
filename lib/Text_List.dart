/*
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
        appBar: AppBar(
          title: const Text(' Text_Tile'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      */
/*child: Text(
                      'My ',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),*//*

                      radius: 25,

                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/34311559/pexels-photo-34311559.jpeg',
                      ),
                      backgroundColor: Colors.amber,
                    ),
                    title: Text('Hassan'),
                    subtitle: Text('Ans'),
                    trailing: Text('12:00'),
                  );
                }
            ),)


          ],

        ),

        //
        // body: Center(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center, // center horizontally
        //     children: [
        //
        //
        //       CircleAvatar(child: Text('My ',style: TextStyle(fontSize: 20,color: Colors.white)),
        //         radius: 50,
        //
        //         backgroundImage: NetworkImage('https://images.pexels.com/photos/34311559/pexels-photo-34311559.jpeg'),
        //         backgroundColor: Colors.amber,
        //       ),
        //
        //
        //       Text('jhsdjd'),
        //
        //
        //       Container(
        //         width: 300,
        //         child: ListTile(title: Text('My Name is hassan!'),
        //           subtitle:Text('Ans  My Father name is muhammad Nawaz!'),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}







*/



import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // sample user data
    final List<Map<String, String>> users = [
      {
        'name': 'Hassaan Nawaz',
        'subtitle': 'Flutter Developer',
        'image':
        'https://images.pexels.com/photos/34311559/pexels-photo-34311559.jpeg',
      },
      {
        'name': 'Ali Raza',
        'subtitle': 'Backend Developer',
        'image':
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg',
      },
      {
        'name': 'Ayesha Khan',
        'subtitle': 'UI/UX Designer',
        'image':
        'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg',
      },
      {
        'name': 'Bilal Ahmed',
        'subtitle': 'Android Developer',
        'image':
        'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
      },
      {
        'name': 'Sara Malik',
        'subtitle': 'Project Manager',
        'image':
        'https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg',
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'MomoTrustDisplay-Regular'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Team Members'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: users.length,
          separatorBuilder: (context, index) => const Divider(), // 👈 adds line between tiles
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(user['image']!),
              ),
              title: Text(
                user['name']!,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(user['subtitle']!),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20),
              onTap: () {
                // 👇 navigate to details page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserDetailPage(user: user),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class UserDetailPage extends StatelessWidget {
  final Map<String, String> user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user['name']!),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(user['image']!),
            ),
            const SizedBox(height: 20),
            Text(
              user['name']!,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              user['subtitle']!,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
















/*import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListTile Example'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),

        body: ListView(
          padding: EdgeInsets.all(5),
          children: [

            // 🔹 Basic ListTile
            ListTile(
              title: Text('Simple Title'),
              subtitle: Text('This is a basic ListTile'),
            ),

            Divider(), // horizontal line separator

            // 🔹 ListTile with Leading (start icon)
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue, size: 35),
              title: Text('Hassaan Nawaz'),
              subtitle: Text('Flutter Developer'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                print("Profile tapped!");
              },
            ),

            Divider(),

            // 🔹 ListTile with CircleAvatar
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/34311559/pexels-photo-34311559.jpeg',
                ),
              ),
              title: Text('My Name is Hassaan!'),
              subtitle: Text('My Father name is Muhammad Nawaz!'),
              trailing: Text('12:00 PM'),
            ),

            Divider(),

            // 🔹 ListTile with Custom Colors
            Container(
              color: Colors.blue.withOpacity(0.1),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('Email'),
                subtitle: Text('hassaan@example.com'),
                trailing: Icon(Icons.send, color: Colors.blue),
              ),
            ),

            Divider(),

            // 🔹 ListTile with No Padding
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.location_on, color: Colors.red),
              title: Text('Location'),
              subtitle: Text('Lahore, Pakistan'),
            ),
          ],
        ),
      ),
    );
  }
}*/
