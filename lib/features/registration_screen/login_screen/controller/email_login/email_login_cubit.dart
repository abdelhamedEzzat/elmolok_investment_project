import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'email_login_state.dart';

class EmailLoginCubit extends Cubit<EmailLoginState> {
  EmailLoginCubit() : super(EmailLoginInitial());

  String email = "";
  String password = "";

  Future userLogin({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      // final credential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFaild(error: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFaild(error: 'Wrong password provided for that user.'));
      } else if (e.code == 'google_services_blocked') {
        emit(LoginFaild(
            error:
                'Google services are blocked in your area. Please try again later.'));
      } else {
        emit(LoginFaild(error: e.message.toString()));
      }
    }
  }

  Future resetAccount() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);

    emit(ResetPassworedSuccess());
  }
}
