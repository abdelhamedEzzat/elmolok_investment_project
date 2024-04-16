part of 'apple_sign_up_cubit.dart';

@immutable
sealed class AppleSignUpState {}

final class AppleSignUpInitial extends AppleSignUpState {}

sealed class SignUpState {}

final class AppleSignUpLoading extends SignUpState {}

final class AppleSignUpSuccess extends SignUpState {}

final class AppleSignUpFaild extends SignUpState {
  final String error;

  AppleSignUpFaild({required this.error});
}
