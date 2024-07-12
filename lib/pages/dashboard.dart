// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
                  top: 10,
                  left: 10,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Button 1'),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Button 2'),
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
