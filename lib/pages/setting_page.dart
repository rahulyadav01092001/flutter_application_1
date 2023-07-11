import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/setting.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white, // <-- SEE HERE
          ),
          centerTitle: true,
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.black),
              title: Text('Notifications',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {},
              ),
            ),
            ListTile(
              title: Text('Profile Settings',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Icon(Icons.person, color: Colors.black),
              onTap: () {},
            ),
            ListTile(
              title: Text('Privacy Settings',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Icon(Icons.lock, color: Colors.black),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.color_lens, color: Colors.black),
              title:
                  Text('Theme', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle:
                  Text('Light', style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.language, color: Colors.black),
              title: Text('Language',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('English',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
              onTap: () {
                // Handle the Language tile tap event
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.black),
              title:
                  Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.arrow_forward, color: Colors.black),
              onTap: () {
                // Handle about setting tap
                // Navigate to about page or show a dialog
              },
            ),
          ],
        ),
      ),
    );
  }
}
