import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          decoration: BoxDecoration(color: Color.fromARGB(255, 7, 57, 60)),
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(children: [
                Text('Log In to your Account',
                    style: TextStyle(
                        color: Color.fromARGB(255, 85, 214, 190),
                        fontSize: 42,
                        decoration: TextDecoration.none)),
                LoginButton()
              ])),
        ));
  }
}

class InputLabelBlock extends StatelessWidget {
  const InputLabelBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Press me'),
    );
  }
}
