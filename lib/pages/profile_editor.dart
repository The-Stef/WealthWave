// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wealthwave/pages/login_page.dart';

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
            fontSize: 32,
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
                // TODO: Get user information to display here from db
                Row(
                  children: [
                    Expanded(
                      child: InputLabelBlock(
                        labelText: 'First Name',
                        bodyText: 'Type your first name...',
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: InputLabelBlock(
                        labelText: 'Last Name',
                        bodyText: 'Type your last name...',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                InputLabelBlock(
                  labelText: 'Email',
                  bodyText: 'Type your email...',
                ),
                SizedBox(height: 20),
                InputLabelBlock(
                  labelText: 'Address',
                  bodyText: 'Type your address...',
                ),
                SizedBox(height: 20),
                InputLabelBlock(
                  labelText: 'Phone Number',
                  bodyText: 'Type your phone number...',
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: InputLabelBlock(
                        labelText: 'Country',
                        bodyText: 'Type your country...',
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: InputLabelBlock(
                        labelText: 'City',
                        bodyText: 'Type your city...',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
