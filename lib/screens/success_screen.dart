import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';


class SuccessScreen extends StatefulWidget{
  final String name;
  const SuccessScreen({super.key, required this.name});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState(); 
}
  class _SuccessScreenState extends State<SuccessScreen> {
    late ConfettiController _confetti;

    @override
    void initState() {
      super.initState();
      _confetti = ConfettiController(duration: const Duration(seconds: 3));
      _confetti.play;
    }

    @override
    void dispose() {
      _confetti.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome Screen'),
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: [
            Center(
              child: Text(
                'Welcome, ${widget.name}!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
              ),
            ),
            ConfettiWidget(
              confettiController: _confetti,
              blastDirectionality: BlastDirectionality.explosive,
              numberOfParticles: 30,
            )
          ],
        ),
      );
    }
  }



    