import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/goals_screen.dart';
import 'categories.dart';
import 'goals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  GoalsScreen createState() => GoalsScreen();

  @override
  GoalsScreen setState() => GoalsScreen();
  // Need to create a setState function or fill it with something

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mibos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', //default Route
      home: CategoriesScreen(),
      routes: {
        GoalsScreen.routeName: (ctx) => GoalsScreen(),
      },
    );
  }
}
