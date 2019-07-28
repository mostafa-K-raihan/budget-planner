import 'package:budget_planner/amount.dart';

import './transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

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
            Container(
              width: double.infinity,
              child: Card(
                child: Text("Chart"),
                
                elevation: 10,
              ),
            ),
            Card(
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      controller: titleController,
                      // onChanged: (val)=>title=val,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      // onChanged: (val)=>amount=val,
                      controller: amountController,
                    ),
                    FlatButton(
                      child: Text('Add Transaction'),
                      textColor: Colors.purple,
                      onPressed: ()  {
                       print(titleController.text)
                      },
                    )
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: transactions.map((tx) {
                return Card(
                  elevation: 10,
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: Amount(
                        amountValue: '\$ ${tx.amount}',
                      )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(tx.title),
                          ),
                          Container(
                            child: Text(
                              DateFormat.yMMMd().format(tx.date),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
