// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:wealthwave/pages/login_page.dart';

const colorDark = Color.fromARGB(255, 25, 25, 25);
const colorBright = Color.fromARGB(255, 85, 214, 190);
const colorBlue = Color.fromARGB(255, 0, 102, 204);

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
        backgroundColor: colorBlue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorBright),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => LoginPage(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          },
        ),
      ),
      body: Container(
        color: colorDark,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Edit Profile Information",
                  style: TextStyle(
                    color: colorBright,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 20),
                // TODO: Get user information to display here from db
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 500,
                      child: InputLabelBlock(
                        labelText: 'First Name',
                        bodyText: 'Type your first name...',
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 500,
                      child: InputLabelBlock(
                        labelText: 'Last Name',
                        bodyText: 'Type your last name...',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 1020,
                  child: InputLabelBlock(
                    labelText: 'Email',
                    bodyText: 'Type your email...',
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 1020,
                  child: InputLabelBlock(
                    labelText: 'Address',
                    bodyText: 'Type your address...',
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 1020,
                  child: InputLabelBlock(
                    labelText: 'Phone Number',
                    bodyText: 'Type your phone number...',
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 500,
                      child: InputLabelBlock(
                        labelText: 'Country',
                        bodyText: 'Type your country...',
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 500,
                      child: InputLabelBlock(
                        labelText: 'City',
                        bodyText: 'Type your city...',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: colorBright),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                ProfileEditor(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ));
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: colorDark,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
