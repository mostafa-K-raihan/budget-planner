import './amount.dart';
import '../models/transaction.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class TransactionWidget extends StatelessWidget {
  
  final List<Transaction> _transactions;
  TransactionWidget(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: _transactions.map((tx) {
        return getTransactionCard(tx);
      }).toList(),
    );
  }

  Card getTransactionCard(Transaction tx) {
    return Card(
        elevation: 10,
        child: Row(
          children: <Widget>[
            getAmountWidget(tx),
            getTitileAndDate(tx)
          ],
        ),
      );
  }

  Column getTitileAndDate(Transaction tx) {
    return Column(
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
          );
  }

  Container getAmountWidget(Transaction tx) {
    return Container(
              child: Amount(
            amountValue: '\$ ${tx.amount}',
          ));
  }
}

