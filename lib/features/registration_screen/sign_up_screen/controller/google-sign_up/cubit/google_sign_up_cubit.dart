import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'google_sign_up_state.dart';

class GoogleSignUpCubit extends Cubit<GoogleSignUpState> {
  GoogleSignUpCubit() : super(GoogleSignUpInitial());
  User? user;
  Future signInWithGoogle() async {
    try {
      emit(GoogleSignUpLoading());
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return;
      }
      // Obtain the auth details from the request
      else {
        // ignore: unnecessary_nullable_for_final_variable_declarations
        final GoogleSignInAuthentication? googleAuth =
            await googleUser.authentication;

        // Create a new credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );

        // Once signed in, return the UserCredential
        final UserCredential authResult =
            await FirebaseAuth.instance.signInWithCredential(credential);
        user = authResult.user!;
        emit(GoogleSignUpSuccess(user!));
      }
    } on Exception catch (e) {
      emit(GoogleSignUpFaild(error: e.toString()));
    }
  }
}
