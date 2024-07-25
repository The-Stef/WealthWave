// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

const backgroundColor = Color.fromARGB(255, 25, 25, 25);
const textColor = Color.fromARGB(255, 85, 214, 190);

void main() {
  runApp(ProfileEditor());
}

class ProfileEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit Profile',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: backgroundColor,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'First Name'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Last Name'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Address'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Phone Number'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Country'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'City'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
