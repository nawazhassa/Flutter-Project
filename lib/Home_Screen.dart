import 'package:flutter/material.dart';
import 'Page_2.dart';

class Home_Screen extends StatefulWidget {
  // static const String id = 'home_screen';

  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              accountName: Text('Home'),
              accountEmail: Text('Hassannawaz@gamil.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/16642613/pexels-photo-16642613.jpeg',
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/Page_2');
                // Navigator.pop(context);
              },
            ),
            ListTile(leading: Icon(Icons.settings), title: Text('Setting')),
            ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
          ],
        ),
      ),

      /*drawer: Drawer(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount:30, // your total tiles
          itemBuilder: (context, index) {
            if (index == 0) {
              return const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                accountName: Text('Home'),
                accountEmail: Text('Hassannawaz@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/16642613/pexels-photo-16642613.jpeg',
                  ),
                ),
              );
            } else {
              return const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              );
            }
          },
        ),
      ),*/

      /*drawer: Drawer(
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                accountName: Text('Home'),
                accountEmail: Text('hassannawaz@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/16642613/pexels-photo-16642613.jpeg',
                  ),
                ),
              ),
              ...List.generate(30, (index) {
                return ListTile(
                  leading: const Icon(Icons.logout),
                  title: Text('Logout $index'),
                  onTap: () {},
                );
              }),
            ],
          ),
        ),
      ),*/
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Page_1');

            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page_2()),
            );*/
          },
          child: const Text('Go to Page 1'),
        ),
      ),
    );
  }
}
