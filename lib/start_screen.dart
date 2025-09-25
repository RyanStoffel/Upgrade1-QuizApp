import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  }); //positional arg that contains function as value

  final void Function() startQuiz; // set equal to as above

  @override
  Widget build(conext) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.blue,
          ),
          // Opacity( use above recommended
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter The Fun Way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
