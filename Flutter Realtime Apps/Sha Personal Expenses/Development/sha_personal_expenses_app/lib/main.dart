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
        children: <Widget>[
          Card(
            child: Text('CHART!!!'),
          ),
          Card(
            child: Text('Transaction!!!'),
          ),
        ],
      ),
    );
  }
}
