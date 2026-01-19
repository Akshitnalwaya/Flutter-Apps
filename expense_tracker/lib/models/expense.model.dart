import 'package:uuid/uuid.dart';

const uuid =const Uuid();
 
class Expense {
 Expense({required this.title, required this.amountl, required this.date}) : id = uuid.v4();

  final String id;
  final String title;
  final double amountl;
  final DateTime date;
}
