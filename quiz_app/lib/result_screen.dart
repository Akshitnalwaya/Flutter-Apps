import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final VoidCallback onRestart;

  const ResultScreen({super.key, required this.selectedAnswers, required this.onRestart});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numberTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You are at the end and you answered $numCorrectQuestions out of $numberTotalQuestions questions"),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(onPressed: onRestart, child: const Text("Restart Quiz")),
          ],
        ),
      ),
    );
  }
}


// class ResultScreen extends StatelessWidget {
//   final List<String> selectedAnswers;
//   final VoidCallback onRestart;

//   const ResultScreen({super.key, required this.selectedAnswers, required this.onRestart});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("You are at the end!"),
//             SizedBox(height: 30),
//             Text("You answered ${selectedAnswers.length} questions."),
//             SizedBox(height: 30),
//             TextButton(onPressed: onRestart, child: const Text("Restart Quiz")),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class ResultScreen
//     extends
//         StatelessWidget {
//   const ResultScreen({
//     super.key,
//   });


//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(
//           20,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "You are at the end",
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Text(
//               "You are at the end..",
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             TextButton(
//               onPressed: () {},
//               child: const Text(
//                 "Presss",
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
