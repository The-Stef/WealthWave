import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('wealthwave_background.png'),
        fit: BoxFit.fill,
      ),
    ));
  }
}
