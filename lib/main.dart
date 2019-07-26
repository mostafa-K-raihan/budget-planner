import 'package:budget_planner/amount.dart';

import './transaction.dart';
import 'package:flutter/cupertino.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.blueGrey,
              child: Card(
                child: Text("Chart"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: transactions.map((tx) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: Amount(
                        amountValue: tx.amount.toString(),
                      )),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Text(tx.title),
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.deepOrange,
                                width: 2,
                              ),
                            ),
                            padding: EdgeInsets.all(2),
                          ),
                          Container(child: Text(tx.date.toString())),
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
