import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_Form.dart';
import 'transaction_List.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser>{
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Monitor samsung',
        value: 1200.00,
        date: DateTime.now()),
    Transaction(
      id: 't2', 
      title: 'sucão', 
      value: 35.00, 
      date: DateTime.now()),
  ];

  _addTransaction(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        transactionList(_transactions),
      ],
    );
  }

}