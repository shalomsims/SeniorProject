import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_complete_guide/main.dart';

class GoalsScreen extends MyApp {
  static const routeName = '/goals_screen';
//  final String goalId;
//  final String goalTitle;

//  GoalsScreen(this.goalId, this.goalTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    int _value = 1;
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView(
          padding: EdgeInsets.only(
              left: 10, top: 25, right: 10, bottom: 10), // space between
          children: [
            DropdownButton(
              value: 1,
              items: [
                DropdownMenuItem(
                  child: Text('First Item'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('Second Item'),
                  value: 2,
                ),
              ],
              //  onChanged: (int value) {
              //    setState(() {
              //      _value = value;
              //    });
              //  },
            ),
            DropdownButton(value: 1, items: [
              DropdownMenuItem(
                child: Text('First Item'),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text('Second Item'),
                value: 2,
              )
            ]),
            //add next dropdown here
          ],
        ));
  }
}
