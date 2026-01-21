import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMEd();

const uuid = Uuid();

enum Category { food, travel, movie, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining_rounded,
  Category.travel: Icons.train_outlined,
  Category.work: Icons.work,
  Category.movie: Icons.movie,
};

class Expense {
  Expense({
    required this.title,
    required this.amountl,
    required this.date,
    required this.category,
    String? id,
  }) : id = id ?? uuid.v4();

  final String id;
  final String title;
  final double amountl;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'amount': amountl,
      'date': date.toIso8601String(),
      'category': category.name,
    };
  }

  factory Expense.fromMap(Map<String, dynamic> map) {
    return Expense(
      id: map['id'],
      title: map['title'],
      amountl: map['amount'],
      date: DateTime.parse(map['date']),
      category: Category.values.byName(map['category']),
    );
  }
}
