import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Restoran',
      amount: 50.0,
      date: DateTime(2023, 6, 1),
      category: Category.yemek,
    ),
    Expense(
      title: 'Sinema Bileti',
      amount: 25.0,
      date: DateTime(2023, 6, 3),
      category: Category.eglence,
    ),
    Expense(
      title: 'Uçak Bileti',
      amount: 200.0,
      date: DateTime(2023, 6, 4),
      category: Category.seyahat,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('Grafikler'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
