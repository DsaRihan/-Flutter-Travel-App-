import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/apptext.dart';
// import 'package:flutter_cubit/misc/colors.dart';

// ignore: must_be_immutable
class ButtonRes extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;
  
  ButtonRes(
    {super.key, required this.size,this.text="hey",this.icon,this.isIcon=false,
     required this.color, required this.backgroundColor,
     required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: borderColor,
                              width: 1.0
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: backgroundColor
                          ),
                          child: isIcon==false?Center(child: Apptext(text: text!,color:color,)):
                          Center(child: Icon(icon,color: color,)),
                        );
  }
}