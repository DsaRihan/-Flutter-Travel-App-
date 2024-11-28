import 'package:bloc/bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_states.dart';
import 'package:flutter_cubit/services/http.dart';

class AppCubit extends Cubit<CubitClass> {
  AppCubit({required  this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final Dataservice data;
  late final placees;
  void getData() async{
    try{
      emit(LoadingState());
      // placees = await data.getInfo();
      emit(LoadedState());
      print(placees);
    }
    catch(e){
      print(e);
    }
  }
  detailPage(){
    emit(DetailState());
  }

  goHome(){
    emit(LoadedState());
  }

  exitPage(){
    emit(ExitState());
  }
}
