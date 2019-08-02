import './widgets/user_transactions.dart';
import './widgets/chartWidget.dart';

import 'package:flutter/material.dart';

void main() => runApp(BudgetPlannerEntry());

class BudgetPlannerEntry extends StatelessWidget {
  // String title;
  // String amount;

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Budget Planner",
          ),
        ),
        body: Container(
          height: 800,
          child: ListView(
            children: <Widget>[
              ChartWidget(),
              UserTransactions(),
            ],
          ),
        ),
      ),
    );
  }
}
