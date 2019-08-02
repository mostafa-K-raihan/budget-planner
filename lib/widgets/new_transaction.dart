import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final FocusNode amountFocusNode = FocusNode();
  final FocusNode titleFocusNode = FocusNode();

  NewTransaction(this.addTx);

  void submitData(ctx) {
    final title = titleController.text;
    final amountTxt = amountController.text;
    if(amountTxt.isEmpty) {
      print("object");
      FocusScope.of(ctx).requestFocus(amountFocusNode);
    }
    final amount = double.parse(amountTxt);
    
    if(title.isEmpty || amount<=0) {
      return;
    }

    addTx(titleController.text, amount);
    FocusScope.of(ctx).requestFocus(titleFocusNode);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_)=>submitData(context),
              focusNode: titleFocusNode,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_)=>submitData(context),
              focusNode: amountFocusNode,
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: ()=>submitData(context),
              
            ),
          ],
        ),
      ),
    );
  }
}
