import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'apple_sign_up_state.dart';

class AppleSignUpCubit extends Cubit<AppleSignUpState> {
  AppleSignUpCubit() : super(AppleSignUpInitial());

  void appleSignUp() async {}
}
