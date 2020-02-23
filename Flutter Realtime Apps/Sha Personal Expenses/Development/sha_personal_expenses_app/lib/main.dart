import 'package:flutter/material.dart';

import './expenses.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Expenses> expenses = [
    Expenses(
        id: 't1', title: 'New Shoes', amount: 109.79, date: DateTime.now()),
    Expenses(id: 't1', title: 'Food', amount: 200.79, date: DateTime.now()),
    Expenses(id: 't1', title: 'Bike Petrol', amount: 50, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sha Daily Expenses Tracker'),
        elevation: 5, // Giving DARK Color CARD
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Horizontal
        crossAxisAlignment: CrossAxisAlignment.center, // Vertical //Default
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.red,
              child: Text('CHART!!!'),
              elevation: 5,
            ),
          ),
          Column(
            children: expenses.map((expensesData) {
              return Card(
                color: Colors.green ,
                child: Text(
                  expensesData.title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
