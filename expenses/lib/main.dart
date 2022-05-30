import 'components/transaction_user.dart';
import '/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Despesas Pessoais"),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: (){},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Card(
                  child: Text("gráfico"),
                  elevation: 5,
                ),
              ),
              TransactionUser(),
            ],
          ),
        ));
        
  }
}
