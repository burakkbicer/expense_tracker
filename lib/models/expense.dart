import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat('dd/MM/yyyy');

const uuid = Uuid();

enum Category { yemek, banka, eglence, seyahat, diger }

const categoryIcons = {
  Category.yemek: Icons.restaurant,
  Category.banka: Icons.account_balance,
  Category.eglence: Icons.movie,
  Category.seyahat: Icons.flight,
  Category.diger: Icons.money,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate => formatter.format(date);
}
