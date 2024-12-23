import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit.dart';
// import 'package:flutter_cubit/cubit/app_cubit_states.dart';
import 'package:flutter_cubit/cubit/app_logic.dart';
import 'package:flutter_cubit/services/http.dart';
// import 'package:flutter_cubit/pages/detail_page.dart';
// import 'package:flutter_cubit/pages/navPages/mainPage.dart';
// import './pages/Welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color:Colors.black
            ),
            elevation: 0,
            backgroundColor: Colors.white
          )
        ),
        home:BlocProvider<AppCubit>(
          create: (context) => AppCubit(
            data: Dataservice(),
          ),
          child:const AppcubitLogicState(),)
      );
  }
}
