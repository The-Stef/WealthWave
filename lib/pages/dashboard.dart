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
      child: const Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: 384,
          width: 1950,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Color.fromARGB(255, 7, 57, 60)),
          ),
        ),
      ),
    );
  }
}
