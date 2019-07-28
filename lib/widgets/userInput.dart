import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  const UserInput({
    Key key,
    @required this.titleController,
    @required this.amountController,
  }) : super(key: key);

  final TextEditingController titleController;
  final TextEditingController amountController;

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
             print(titleController.text);
            },
          );
  }

  TextField getAmountField() {
    return TextField(
            decoration: InputDecoration(labelText: "Amount"),
            // onChanged: (val)=>amount=val,
            controller: amountController,
          );
  }

  TextField getTitleField() {
    return TextField(
            decoration: InputDecoration(labelText: "Title"),
            controller: titleController,
            // onChanged: (val)=>title=val,
          );
  }
}
