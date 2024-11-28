import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/apptext.dart';
import 'package:flutter_cubit/widgets/largeText.dart';
import 'package:flutter_cubit/widgets/responsive.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _nameState();
}

class _nameState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_,index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                "img/"+images[index]
              ),
              fit:BoxFit.cover
              )
            ),
            child: Container(
              margin: EdgeInsets.only(top: 60,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Largetext(text: "Trips"),
                      Apptext(text: "Mountain",size: 30,),
                      SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: Apptext(text: "Mountain Hikes gives you an incredible sense of freedom along with Endurance",
                        color: AppColors.textColor2,size: 14,),
                      ),
                      SizedBox(height: 30,),

                      GestureDetector(
                        onTap: (){
                          BlocProvider.of<AppCubit>(context).getData();
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Buttonresp(),
                            ],
                          )),),
                    ],
                  )
                  ,
                  Column(
                    children: List.generate(3, (indexdots){
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexdots ? 25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexdots ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3)
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
      }),
    );
  }
}