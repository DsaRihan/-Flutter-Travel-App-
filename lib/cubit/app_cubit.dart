import 'package:bloc/bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_states.dart';

class AppCubit extends Cubit<CubitClass> {
  AppCubit() : super(InitialState()) {
    emit(WelcomeState());
  }
}
