// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wealthwave/pages/login_page.dart';

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
            child: GridView.count(
              padding: EdgeInsets.all(20),
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              // Some dummy data took from online documentation
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: const Text("He'd have you all unravel at the"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Sound of screams but the'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: const Text('Who scream'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[500],
                  child: const Text('Revolution is coming...'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: const Text('Revolution, they...'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
