import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz
    extends
        StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<
    Quiz
  >
  createState() {
    return _QuizState();
  }
}

class _QuizState
    extends
        State<
          Quiz
        > {
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(
      () {
        activeScreen = 'question-screen';
      },
    );
  }

  @override
  Widget build(
    context,
  ) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(
                  255,
                  45,
                  15,
                  96,
                ),
                Color.fromARGB(
                  255,
                  128,
                  82,
                  208,
                ),
              ],
              begin: Alignment.bottomRight,
            ),
          ),
          child:
              activeScreen ==
                  'start-screen'
              ? StartScreen(
                  switchScreen,
                )
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
