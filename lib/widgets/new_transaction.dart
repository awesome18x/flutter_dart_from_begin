import 'package:flutter/material.dart';


class NewTransaction extends StatelessWidget {
  final Function addTx;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Title',
                ),
                controller: titleController
            ),
            TextField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            FlatButton(
                onPressed: () {
                  addTx(
                    titleController.text,
                    double.parse(amountController.text)
                  );
                },
                child: Text('Add Transaction')
            )

          ],
        ),
      ),
    );
  }
}
