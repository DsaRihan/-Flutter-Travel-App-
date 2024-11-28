import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/apptext.dart';
import 'package:flutter_cubit/widgets/largeText.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  var images={
    "balloning.png":"Balloning",
    "hiking.png":"Hiking",
    "kayaking.png":"Kayaking",
    "snorkling.png":"snorkling",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, left: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5)
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: 
              Largetext(text: "Discover")
          ),
          const SizedBox(height: 20,),
          Container(
            child: Align(
              // alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 15,right: 20),
                controller: _tabcontroller,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                tabs:[
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Emotions")
                ] ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20,left: 10),
            height: 200,
            width: double.infinity,
            child: TabBarView(
              controller: _tabcontroller,
              children: 
            [
               ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                 itemBuilder: (BuildContext context, int index) { 
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image:const DecorationImage(image: AssetImage("img/mountain.jpeg"),
                        fit: BoxFit.cover
                        )
                      ),
                    );
                  },
               ),
              Text("here"),
              Text("asa"),
            ]),
          ),
          SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Largetext(text: "Explore More",size: 22),
              Apptext(text: "See all",color:AppColors.mainColor,)
            ],),
          ),
          SizedBox(height: 10),
          Container(
            height: 110,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (_,index){
              return Container(
                margin: const EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      // margin: const EdgeInsets.only(right: 30),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image:DecorationImage(image: AssetImage("img/"+images.keys.elementAt(index)),
                          fit: BoxFit.cover
                          )
                        ),
                    ),
                    Container(
                      child: Apptext(text: images.values.elementAt(index).toString(),color: AppColors.textColor2),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}