import 'package:chatmolham/screens/registration_screen.dart';
import 'package:chatmolham/screens/signin_screen.dart';

import 'package:chatmolham/widgete/my_button.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget {
static const String screenRoute ='welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Column(
              children: [

                CircleAvatar(
                  radius: 100,
                  backgroundImage:AssetImage('images/logo.jpg') ,
                  
                ),
                 SizedBox(height: 15),
                Text(
                  'ALmolham Chat',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
              color: Color.fromARGB(255, 18, 189, 208),
              title: 'Sign in',
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.screenRoute);
              },
            ),
            MyButton(
              color: Color.fromARGB(255, 12, 123, 135),
              title: 'Sign up',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.screenRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}