import './widgets/userInput.dart';
import './models/transaction.dart';
import './widgets/transactionWidget.dart';
import './widgets/chartWidget.dart';

import 'package:flutter/material.dart';



void main() => runApp(BudgetPlannerEntry());

class BudgetPlannerEntry extends StatelessWidget {
  final List<Transaction> transactions = [
    new Transaction(
        id: 1, amount: 49.99, title: "New Shoe 1", date: DateTime.now()),
    new Transaction(
        id: 2, amount: 99.99, title: "New Shoe 2", date: DateTime.now()),
    new Transaction(
        id: 3, amount: 79.99, title: "New Shoe 3", date: DateTime.now()),
    new Transaction(
        id: 4, amount: 59.99, title: "New Shoe 4", date: DateTime.now()),
    new Transaction(
        id: 5, amount: 39.99, title: "New Shoe 5", date: DateTime.now()),
  ];

  // String title;
  // String amount;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Budget Planner",
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ChartWidget(),
            UserInput(titleController: titleController, amountController: amountController),
            TransactionWidget(transactions: transactions)
          ],
        ),
      ),
    );
  }
}

