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
  Widget build(context)
   {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
             currentQuestion.text,
             style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          AnswerButton(currentQuestion.answers[0], (){}),
          const SizedBox(
            height: 14,
          ),
          AnswerButton(currentQuestion.answers[1], (){})  ,
          const SizedBox(
            height: 14,
          ),
          AnswerButton(currentQuestion.answers[2], (){}),
          const SizedBox(
            height: 14,
          ),
          AnswerButton(currentQuestion.answers[3], (){})
        ],
      ),
    );
  }
}
