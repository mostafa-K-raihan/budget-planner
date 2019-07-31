import 'package:budget_planner/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  final Function _addTx;
  UserInput(this._addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            getTitleField(),
            getAmountField(),
            getAddButton()
          ],
        ),
      ),
    );
  }

  FlatButton getAddButton() {
    return FlatButton(
            child: Text('Add Transaction'),
            textColor: Colors.purple,
            onPressed: ()  {
             _addTx(_titleController.text, double.parse(_amountController.text));
            },
          );
  }

  TextField getAmountField() {
    return TextField(
            decoration: InputDecoration(labelText: "Amount"),
            // onChanged: (val)=>amount=val,
            controller: _amountController,
          );
  }

  TextField getTitleField() {
    return TextField(
            decoration: InputDecoration(labelText: "Title"),
            controller: _titleController,
            // onChanged: (val)=>title=val,
          );
  }
}
