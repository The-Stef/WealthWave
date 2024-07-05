// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
          child: SignupColoredBlock(),
        ));
  }
}

class SignupColoredBlock extends StatelessWidget {
  const SignupColoredBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 896,
        height: 960,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Color.fromARGB(255, 7, 57, 60)),
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(children: [
                Image(
                  image: AssetImage('wealthwave_logo_turqoise.png'),
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 30),
                Text('Create your Account',
                    style: TextStyle(
                        color: Color.fromARGB(255, 85, 214, 190),
                        fontSize: 42,
                        decoration: TextDecoration.none)),
                SizedBox(height: 70),
                InputLabelBlock(
                  labelText: 'First Name',
                  bodyText: 'Type your first name...',
                ),
                SizedBox(height: 20),
                InputLabelBlock(
                  labelText: 'Last Name',
                  bodyText: 'Type your last name...',
                ),
                SizedBox(height: 20),
                InputLabelBlock(
                  labelText: 'Email',
                  bodyText: 'Type your email address...',
                ),
                SizedBox(height: 20),
                InputLabelBlock(
                  labelText: 'Password',
                  bodyText: 'Type your password...',
                ),
                SizedBox(height: 20),
                RegisterButton(),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text('Already have an account? Log in.'))
              ])),
        ));
  }
}

class InputLabelBlock extends StatelessWidget {
  final String labelText, bodyText;

  const InputLabelBlock(
      {super.key, required this.labelText, required this.bodyText});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextField(
        style:
            TextStyle(fontSize: 30, color: Color.fromARGB(255, 85, 214, 190)),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: Color.fromARGB(255, 85, 214, 190))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: Color.fromARGB(255, 85, 214, 190))),
          hintText: bodyText,
          hintStyle:
              TextStyle(color: Color.fromARGB(255, 85, 214, 190), fontSize: 32),
          labelText: labelText,
          labelStyle:
              TextStyle(color: Color.fromARGB(255, 85, 214, 190), fontSize: 32),
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        height: 65,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 85, 214, 190),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            'Register',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 7, 57, 60),
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
