// ignore_for_file: equal_keys_in_map

import 'package:chatmolham/screens/chat_screen.dart';
import 'package:chatmolham/screens/first_screen_for_apps.dart';
import 'package:chatmolham/screens/note_screen.dart';

import 'package:chatmolham/screens/registration_screen.dart';
import 'package:chatmolham/screens/signin_screen.dart';
import 'package:chatmolham/screens/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      home: AnimatedSplashScreen(
        splash: Image.asset('images/logo.jpg'),
        
         nextScreen: const FirstScreenForApps(),
         splashTransition: SplashTransition.fadeTransition,
         duration: 2000,
         ),
         routes: {
          FirstScreenForApps.screenRoute:(context) => const WelcomeScreen(),
          WelcomeScreen.screenRoute:(context) => const WelcomeScreen(),
          SignInScreen.screenRoute:(context) => const SignInScreen(),
          RegistrationScreen.screenRoute:(context) => const RegistrationScreen(),
          ChatScreen.screenRoute:(context) => const ChatScreen(),
          FirstScreenForApps.screenRoute:(context) => const NoteScreen(),


         },
         
      title: 'Al molham app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),


    );
  }
}
