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

class _QuestionsScreenState
    extends
        State<
          QuestionsScreen
        > {
  @override
  Widget build(
    context,
  ) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 14,
            ),
            ...currentQuestion.answers.map(
              (
                item,
              ) {
                return AnswerButton(
                  item,
                  () {},
                );
                // return AnswerButton(currentQuestion.answers[item], (){}),
              },
            ),
          ],
        ),
      ),
    );
  }
}
