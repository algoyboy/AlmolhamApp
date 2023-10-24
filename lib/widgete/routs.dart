



import 'package:chatmolham/screens/note_screen.dart';
import 'package:flutter/material.dart';

abstract class Routs{
  static Future<MaterialPageRoute?> materialPageRoute(RouteSettings settings) async {
    switch(settings.name){

      case '/note':
      return MaterialPageRoute(builder: (context)=>const NoteScreen());





    }
    return null;
  }
}