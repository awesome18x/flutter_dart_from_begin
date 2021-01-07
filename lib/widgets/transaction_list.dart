import 'package:flutter/material.dart';
import 'package:flutter_dart_tutorial/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((tx) {
          return Card(
              child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2)
                      ),
                      child: Text(
                          '\$${tx.amount}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple
                          )
                      )
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(tx.title, style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                        Text(
                            DateFormat('dd-MM-yyyy').format(tx.date),
                            style: TextStyle(
                                color: Colors.grey
                            )
                        )
                      ]

                  )
                ],
              )
          );
        }).toList()
    );
  }
}
