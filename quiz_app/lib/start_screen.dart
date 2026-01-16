import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen
    extends
        StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  });
  final void Function() startQuiz;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(
              150,
              255,
              255,
              255,
            ),
          ),

          const SizedBox(
            height: 79,
          ),
          Text(
            "Click Me",
            style: GoogleFonts.buda(
              fontSize: 40,
              color: const Color.fromARGB(
                255,
                255,
                255,
                255,
              ),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            label: Text(
              "Press me",
              style: GoogleFonts.buda(
                fontSize: 22, // 👈 increase this
              ),
            ),
            icon: const Icon(
              Icons.arrow_outward,
              size: 22,
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
