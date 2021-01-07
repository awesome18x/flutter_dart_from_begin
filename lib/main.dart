import 'package:flutter/material.dart';
import 'package:flutter_dart_tutorial/models/transaction.dart';
import 'package:flutter_dart_tutorial/widgets/new_transaction.dart';
import 'package:flutter_dart_tutorial/widgets/transaction_list.dart';
import 'package:flutter_dart_tutorial/widgets/user_transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  // final List<Transaction> transactions = [
  //   Transaction(
  //     id: '1',
  //     title: 'New Shoes',
  //     amount: 69.99,
  //     date: DateTime.now()
  //   ),
  //   Transaction(
  //       id: '1',
  //       title: 'Weekly Groceries',
  //       amount: 16.53,
  //       date: DateTime.now()
  //   )
  // ];

  // final titleController = TextEditingController();
  // final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text('CHART'),
                color: Colors.blue,
                elevation: 5,
              ),
            ),
            UserTransactions()
          ]
        ),
      )
    );
  }
}


