import 'package:flutter/material.dart';

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
          Container(
            child: Card(
              color: Colors.indigo,
              child: Text('Transaction!!!'),
            ),
          ),
        ],
      ),
    );
  }
}
