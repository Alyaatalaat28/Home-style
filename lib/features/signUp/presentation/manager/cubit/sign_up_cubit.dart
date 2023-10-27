import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:home_style/features/signUp/data/user_model.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

 //create user
  void craeteUser({
    required String name,
    required String userName, 
    required String email,
    required String uId}){
      UserModel userModel=UserModel(
        email:email ,
        name:name  ,
        userName:userName ,
        uId:uId);

        FirebaseFirestore.instance.collection('users').doc(uId).set(
          userModel.toMap()).
          then((value) {
            emit(CreateUserSuccessState());
          }).
          catchError((error){
            if (kDebugMode) {
              print(error.toString());
            }
           emit(CreateUserErrorState());
          });
  }

//signUp with email and password
void signUPWithEmailAndPassword({
    required String name,
    required String userName, 
    required String email,
    required String password,
}){
  emit(SignUpLoadingState());
  FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password).
  then((value) {
    craeteUser(
      name:name , 
      userName: userName,
      email: email,
      uId: value.user!.uid);
  } ).
  catchError((error){
    if (kDebugMode) {
      print(error.toString());
    }
    emit(SignUpErrorState());
  });

} 

//SignUp with google
GoogleSignIn googleSignIn=GoogleSignIn();

Future<UserCredential?> signUpWithGoogle()async{
  try{
    final GoogleSignInAccount?  googleUser=await googleSignIn.signIn();
    final GoogleSignInAuthentication  googleAuth=await googleUser!.authentication;
    final OAuthCredential credential =GoogleAuthProvider.credential(
      accessToken:googleAuth.accessToken ,
      idToken: googleAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential).
    then((value) {
          emit(GoogleUserSuccessState());
          return null;
    });
  }catch(error){
    if (kDebugMode) {
      print(error.toString());
    }
    emit(GoogleUserErrorState());
    return null;
  }
}



}
