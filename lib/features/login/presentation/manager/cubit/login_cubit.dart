// ignore_for_file: avoid_print

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

// login with email and password
void userLogin({
  required String email,
  required String password,

}){
  emit(LoginLoadingState());
  FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email, 
    password: password).
    then((value) => {
     if (kDebugMode) {
        print(value.user!.uid)
      },
      emit(LoginSuccessState())
    }).
    catchError((error){
      emit(LoginErrorState());
    });

}


}
