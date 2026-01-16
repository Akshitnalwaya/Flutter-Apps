import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final VoidCallback onRestart;

  const ResultScreen({
    super.key,
    required this.selectedAnswers,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You are at the end!"),
            const SizedBox(height: 30),
            Text("You answered ${selectedAnswers.length} questions."),
            const SizedBox(height: 30),
            TextButton(
              onPressed: onRestart,
              child: const Text("Restart Quiz"),
            ),
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
