// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wealthwave/pages/login_page.dart';
import 'package:wealthwave/pages/profile_editor.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('wealthwave_background.png'),
        fit: BoxFit.fill,
      )),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 384,
              width: 1950,
              child: DecoratedBox(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 7, 57, 60)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      right: 5,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        LoginPage(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ));
                        },
                        icon: Image.asset(
                          'logout.png',
                          width: 24,
                          height: 24,
                        ),
                        label: Text(
                          'Log Out',
                          style: TextStyle(
                              color: Color.fromARGB(255, 85, 214, 190),
                              fontSize: 24),
                        ),
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                Color.fromARGB(255, 7, 57, 60))),
                      ),
                    ),
                    Positioned(
                        top: 40,
                        left: 400,
                        child: Container(
                            width: 300.0,
                            height: 300.0,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 7, 57, 60),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color.fromARGB(255, 85, 214, 190),
                                width: 4.0,
                              ),
                            ),
                            child: ClipOval(
                                child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.all(60),
                                child: Image.asset(
                                  'question.png',
                                  fit: BoxFit.contain,
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                            )))),
                    Positioned(
                      top: 100,
                      left: 800,
                      child: Column(
                        children: [
                          Text(
                            'WealthWave',
                            style: TextStyle(
                              fontSize: 128,
                              color: Color.fromARGB(255, 85, 214, 190),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            'Your Personal Finance Website',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 85, 214, 190),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Center(
            child: GridView.count(
              padding: EdgeInsets.all(20),
              crossAxisCount: 4,
              mainAxisSpacing: 50,
              crossAxisSpacing: 50,
              childAspectRatio: 0.9,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 25, 25),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color.fromARGB(255, 85, 214, 190),
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 45),
                        Text(
                          "First Name:",
                          style: TextStyle(
                            fontSize: 28,
                            color: Color.fromARGB(255, 85, 214, 190),
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "[First Name]",
                          style: TextStyle(
                            fontSize: 32,
                            color: Color.fromARGB(255, 85, 214, 190),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(height: 35),
                        Text(
                          "Last Name:",
                          style: TextStyle(
                            fontSize: 28,
                            color: Color.fromARGB(255, 85, 214, 190),
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "[Last Name]",
                          style: TextStyle(
                            fontSize: 32,
                            color: Color.fromARGB(255, 85, 214, 190),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(height: 35),
                        Text(
                          "Email:",
                          style: TextStyle(
                            fontSize: 28,
                            color: Color.fromARGB(255, 85, 214, 190),
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "[Email]",
                          style: TextStyle(
                            fontSize: 32,
                            color: Color.fromARGB(255, 85, 214, 190),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(height: 35),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                backgroundColor:
                                    Color.fromARGB(255, 85, 214, 190)),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            ProfileEditor(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ));
                            },
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 57, 60),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 25, 25),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color.fromARGB(255, 85, 214, 190),
                      width: 3,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 25, 25),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color.fromARGB(255, 85, 214, 190),
                      width: 3,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 25, 25),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color.fromARGB(255, 85, 214, 190),
                      width: 3,
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
