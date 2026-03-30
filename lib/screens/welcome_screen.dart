import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'signup_screen.dart';


class WelcomeScreen extends StatefulWidget{
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

  class _WelcomeScreenState extends State<WelcomeScreen> {

    final AnimatedTextController myAnimatedTextController = AnimatedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Us Today for the Cash Money!'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 44,
              child: AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText(
                    'Welcome!', 
                    textStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold
                    ),
                  // speed: const Duration(milliseconds: 500),
                  )
                ],
                repeatForever: true,
                pause: const Duration(milliseconds: 100),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
                controller: myAnimatedTextController
              ),
            ),

            SizedBox(height:16),
            
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
              child: Text('Create Account')
            ),
          ]
        ),  
      ),
    );
  }
}

