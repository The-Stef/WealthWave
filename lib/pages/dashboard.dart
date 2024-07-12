// ignore_for_file: prefer_const_constructors

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
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: 384,
          width: 1950,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Color.fromARGB(255, 7, 57, 60)),
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
                            pageBuilder: (context, animation1, animation2) =>
                                LoginPage(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ));
                    },
                    icon: Image.asset(
                      'logout.png',
                      width: 24, // Adjust size as needed
                      height: 24, // Adjust size as needed
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
