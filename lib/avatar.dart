import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String name;

  const Avatar({this.name = './assets/images/icon.png'});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        height: 1000.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill, image: new AssetImage('./images/icon.png'))));
  }
}
