import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Largetext extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  Largetext({super.key, this.size=30, required this.text,this.color=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}