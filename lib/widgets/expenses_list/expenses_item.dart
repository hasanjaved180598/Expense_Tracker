import 'package:expense_tracker/main.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                  "\$${expense.amount.toStringAsFixed(2)}",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      categoryIcons[expense.category],
                      color: kDarkColorScheme.onSurface,
                    ),
                    SizedBox(width: 8),
                    Text(
                      expense.formattedDate,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
