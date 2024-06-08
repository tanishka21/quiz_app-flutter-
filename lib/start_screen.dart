import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/firebase.png',
            width: 50,
            color: const Color.fromARGB(148, 224, 182, 182),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
                color: Color.fromARGB(255, 198, 199, 230), fontSize: 24),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 237, 228, 228),
                backgroundColor: const Color.fromARGB(255, 209, 109, 109)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start',
              style: TextStyle(fontSize: 23),
            ),
          ),
        ],
      ),
    );
  }
}
