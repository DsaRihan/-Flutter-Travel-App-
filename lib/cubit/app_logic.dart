import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit.dart';
import 'package:flutter_cubit/cubit/app_cubit_states.dart';
import 'package:flutter_cubit/pages/Welcome_page.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
import 'package:flutter_cubit/pages/navPages/home_page.dart';

class AppcubitLogicState extends StatefulWidget {
  const AppcubitLogicState({super.key});

  @override
  State<AppcubitLogicState> createState() => __AppcubitLogicStateState();
}

class __AppcubitLogicStateState extends State<AppcubitLogicState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit,CubitClass>
      (builder: (context,state){
        if(state is WelcomeState){
          return const WelcomePage();
        }
        if(state is LoadingState){
          return const Center(child: CircularProgressIndicator());
        }
        if(state is LoadedState){
          return const HomePage();
        }
        if(state is DetailState){
          return const DetailPage();
        }
        if(state is ExitState){
          return const WelcomePage();
        }
        else
        {
          return Container();
        }
      },),
    );
  }
}