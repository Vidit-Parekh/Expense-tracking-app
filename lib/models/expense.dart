import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryItem = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.amt,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amt;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpenseBuket {
  const ExpenseBuket({required this.category, required this.expenses});
  ExpenseBuket.forCategory(List<Expense> allExpense, this.category)
      : expenses = allExpense
            .where((expense) => expense.category == category)
            .toList();
  final Category category;
  final List<Expense> expenses;
  double get totalExpense {
    double sum = 0;

    for (final expense in expenses) {
      sum += expense.amt;
    }

    return sum;
  }
}
