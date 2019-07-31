import 'package:budget_planner/models/transaction.dart';
import 'package:flutter/material.dart';

import 'transactionWidget.dart';
import 'userInput.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

  final List<Transaction> _transactions = [
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

  void _addTransaction(String title, double amount) {
    final Transaction newTx = Transaction(title: title, amount: amount, date: DateTime.now(), id: DateTime.now().millisecond);
    setState(() {
      _transactions.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: [
          UserInput(_addTransaction),
          TransactionWidget(_transactions),
        ],
      ),
    );
  }
}

