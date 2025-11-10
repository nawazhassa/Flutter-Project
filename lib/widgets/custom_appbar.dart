import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.white,
      title: Text(title),
      actions: [
        // Search button
        IconButton(
          onPressed: () {
            print('Search clicked');
          },
          icon: Icon(Icons.search),
        ),
        // Popup menu
        PopupMenuButton<int>(
          onSelected: (value) {
            if (value == 1) {
              print('Edit clicked');
            } else if (value == 2) {
              print('Delete clicked');
            }
          },
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Row(
                children: [
                  Icon(Icons.edit, color: Colors.black),
                  SizedBox(width: 10),
                  Text('Edit'),
                ],
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Row(
                children: [
                  Icon(Icons.delete, color: Colors.red),
                  SizedBox(width: 10),
                  Text('Delete'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
