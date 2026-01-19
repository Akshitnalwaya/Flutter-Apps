import 'package:expense_tracker/models/expense.model.dart';
import 'package:flutter/material.dart';

class ExpensItemm extends StatelessWidget {
  const ExpensItemm(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16
        ),
        child: Column(
          children: [
            Text(
              expense.title
            ),
            const SizedBox(height: 4,),
            Row(
              children: [
                Text(
                  '\$ ${expense.amountl.toStringAsFixed(2)} '
                ),
                const Spacer(),
                Row(
                  children: [
                    /*const Icon(Icons.access_alarm_outlined), */
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 9),
                    // Text(expense.date.toIso8601String())
                    Text(expense.formattedDate),

                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
