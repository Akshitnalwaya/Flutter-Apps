import 'package:uuid/uuid.dart';

const uuid =const Uuid();
 
 enum Category {food , travel, lesiure , work}

class Expense {
 Expense({required this.title, required this.amountl, required this.date,required this.category}) : id = uuid.v4();

  final String id;
  final String title;
  final double amountl;
  final DateTime date;
  final Category category;
}
