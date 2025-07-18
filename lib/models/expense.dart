import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat().add_yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work, health }

const categoryIcons = {
  Category.food: Icons.lunch_dining_sharp,
  Category.travel: Icons.train_sharp,
  Category.leisure: Icons.movie_sharp,
  Category.work: Icons.work_sharp,
  Category.health: Icons.health_and_safety_sharp,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v1();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
