import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/avatar.dart';
import './dummy_data.dart';
import 'category_item.dart';
import './avatar.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mibos'),
        backgroundColor: Color.alphaBlend(Colors.black, Colors.white),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 4 / 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
      ),
      backgroundColor: Color.alphaBlend(Colors.white, Colors.black),
      bottomNavigationBar: Container(
          width: 300.0,
          height: 300.0,
          decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                  fit: BoxFit.contain,
                  image: new AssetImage('./assets/images/icon.png')))),
    );
  } //Sliver is a scrollable area.
}
