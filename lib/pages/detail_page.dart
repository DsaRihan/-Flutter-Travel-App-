import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/apptext.dart';
import 'package:flutter_cubit/widgets/buttonres.dart';
import 'package:flutter_cubit/widgets/largeText.dart';
import 'package:flutter_cubit/widgets/responsive.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gotstar = 4;
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,right: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/mountain.jpeg"),
                    fit: BoxFit.cover),),
            )),
            Positioned(
              top:30,
              child: Row(
              children: [
                IconButton(onPressed: (){
                  BlocProvider.of<AppCubit>(context).goHome();
                }, icon: Icon(Icons.menu),
                color: Colors.white,), 
              ],
            )),
            Positioned(
              top: 170,
              child: Container(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Largetext(text: "Yosemite",color: Colors.black.withOpacity(0.8)),
                        Largetext(text: "\$ 250",color: AppColors.mainColor,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: AppColors.mainColor,),
                        SizedBox(width: 6,),
                        Apptext(text: "USA, California",color: AppColors.textColor1,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(children: [
                      Wrap(
                      children: List.generate(5, (index){
                        return Icon(Icons.star,color:index<gotstar? AppColors.starColor:AppColors.textColor1);
                      }),
                    ),
                      Apptext(text: "(4.0)",color: AppColors.textColor2,),
                    ],),
                    SizedBox(height: 15,),
                    Largetext(text: "People",color: Colors.black.withOpacity(0.8),),
                    SizedBox(height: 1,),
                    Apptext(text: "Number of people in your group",color: AppColors.mainColor,),
                    SizedBox(height: 5,),
                    Wrap(
                      children: List.generate(5, (index){
                        return InkWell(
                          onTap: (){
                            setState(() {
                              selectedindex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: ButtonRes(
                              size: 50,
                              backgroundColor:selectedindex ==index? Colors.black:AppColors.buttonBackground,
                              borderColor: selectedindex == index? Colors.black:AppColors.buttonBackground,
                              color:selectedindex == index?Colors.white: Colors.black,
                              text: (index+1).toString(),),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 15,),
                    Largetext(text: "Desciption",color: Colors.black.withOpacity(0.8),size: 20,),
                    Apptext(text: "You must go for a travel. Travel helps get rid of pressure. Go to the mountains to see the nature.",
                    color: AppColors.mainColor,)

                  
                  ],
                ),
            )),
            Positioned(bottom: 20,left: 10,right: 10,
              child: Row(
                children: [
                  ButtonRes(size: 60,
                  color: AppColors.textColor2,
                  backgroundColor: Colors.white,
                  borderColor: AppColors.textColor2,
                  isIcon: true,
                  icon: Icons.favorite_border,),
                  SizedBox(width: 20,),
                  Buttonresp(isresponsive: true,)
                ],
            ))
          ],
        ),
      ),
    );
  }
}