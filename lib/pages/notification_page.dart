import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
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
            'Notifications',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 10),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.black),
              title: Text('Notification 1',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('This is the first notification'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.black),
              title: Text('Notification 2',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('This is the second notification'),
              onTap: () {
               
              },
            ),
           
          ],
        ),
      ),
    );
  }
}
