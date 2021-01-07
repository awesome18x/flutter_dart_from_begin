import 'package:flutter/material.dart';
import 'package:flutter_dart_tutorial/models/transaction.dart';
import 'package:flutter_dart_tutorial/widgets/new_transaction.dart';
import 'package:flutter_dart_tutorial/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
      Transaction(
          id: '1',
          title: 'New Shoes',
          amount: 69.99,
          date: DateTime.now()
      ),
      Transaction(
          id: '1',
          title: 'Weekly Groceries',
          amount: 16.53,
          date: DateTime.now()
      )
  ];

  _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now()
    );
    
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
