import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navPages/bar_itempage.dart';
import 'package:flutter_cubit/pages/navPages/home_page.dart';
import 'package:flutter_cubit/pages/navPages/mypage.dart';
import 'package:flutter_cubit/pages/navPages/searchpage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List Pages = [
    HomePage(),
    BarItem(),
    Searchpage(),
    MyPage()
  ];

  int currentin = 0;
  void OnTap(int index){
    setState(() {
      currentin = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentin],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: OnTap,
        currentIndex: currentin,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items:const [
          BottomNavigationBarItem(label:"Home", icon:Icon(Icons.apps)),
          BottomNavigationBarItem(label:"Home",icon:Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:"Home",icon:Icon(Icons.search)),
          BottomNavigationBarItem(label:"Home",icon:Icon(Icons.person))
        ],
      ),
    );
  }
}