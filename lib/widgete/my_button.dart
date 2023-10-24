import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed:   onPressed,
          minWidth: 200,
          height: 42,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
class MyButton2 extends StatelessWidget {
  MyButton2({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation:10,
        color: color,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed:   onPressed,
          minWidth: 100,
          height: 80,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white,fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class RaisedButton extends StatelessWidget {
  RaisedButton({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed:   onPressed,
          minWidth: 200,
          height: 42,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
class MyButton3 extends StatelessWidget {
  MyButton3({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation:10,
        color: color,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed:   onPressed,
          minWidth: 100,
          height: 80,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white,fontSize: 30),
          ),
        ),
      ),
    );
  }
}