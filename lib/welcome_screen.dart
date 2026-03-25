import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget{
  final String name;
  const WelcomeScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Screen'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'Welcome, $name!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
        ),
      )
    );
  }
}

