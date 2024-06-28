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
        ),
        child: const Center(
          child: ColoredBlock(),
        ));
  }
}

class ColoredBlock extends StatelessWidget {
  const ColoredBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 896,
      height: 960,
      child: DecoratedBox(
          decoration: BoxDecoration(color: Color.fromARGB(255, 7, 57, 60))),
    );
  }
}
