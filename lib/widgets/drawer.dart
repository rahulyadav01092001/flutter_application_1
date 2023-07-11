import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Theme.of(context).cardColor,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Rahul',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  accountEmail: Text('rky01092001@gmail.com',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(imageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text('Profile',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.library_books,
                color: Colors.black,
              ),
              title: Text('Courses',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              title: Text('Notifications',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pushNamed(context, 'Notification');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text('Settings',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pushNamed(context, 'Settings');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title:
                  Text('Logout', style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.pushNamed(context, 'Login');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
