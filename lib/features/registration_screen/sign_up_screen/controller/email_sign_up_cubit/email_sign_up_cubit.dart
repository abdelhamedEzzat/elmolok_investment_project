import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'email_sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  String email = "";
  String password = "";
  Future userSignUPWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(SignUpLoading());
    try {
      // final credential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFaild(error: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFaild(error: 'The account already exists for that email.'));
      } else if (e.code == 'google-services-blocked') {
        emit(SignUpFaild(
            error:
                'Google services are blocked in your area. Please try again later.'));
      } else {
        emit(SignUpFaild(error: e.message.toString()));
      }
    }
  }
}
