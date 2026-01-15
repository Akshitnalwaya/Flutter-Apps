import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen
    extends
        StatefulWidget {
  const QuestionsScreen({
    super.key,
  });

  @override
  State<
    QuestionsScreen
  >
  createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(

  
    context,
  ) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Heloo",
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 45,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          AnswerButton('Looking for the answer', (){})
        ],
      ),
    );
  }
}
