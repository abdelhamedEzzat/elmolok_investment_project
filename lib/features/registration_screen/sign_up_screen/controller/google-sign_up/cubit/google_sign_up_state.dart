part of 'google_sign_up_cubit.dart';

@immutable
sealed class GoogleSignUpState {}

final class GoogleSignUpInitial extends GoogleSignUpState {}

final class GoogleSignUpLoading extends GoogleSignUpState {}

final class GoogleSignUpSuccess extends GoogleSignUpState {
  final User user;

  GoogleSignUpSuccess(this.user);
}

final class GoogleSignUpFaild extends GoogleSignUpState {
  final String error;

  GoogleSignUpFaild({required this.error});
}
