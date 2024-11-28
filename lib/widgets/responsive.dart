import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/apptext.dart';

// ignore: must_be_immutable
class Buttonresp extends StatelessWidget {
  bool? isresponsive;
  double? width;

  Buttonresp({super.key, this.isresponsive=false, this.width=120});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: isresponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor 
        ),
        child: Row(
          mainAxisAlignment:isresponsive==true? 
          MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
          children: [
            isresponsive==true? Container(
              margin: const EdgeInsets.only(left: 20),
               child: Apptext(text: "Book Trip Now",color: Colors.white,)):
               Container(),
            Image.asset("img/button-one.png")
          ],
        ),
      );
    
  }
}