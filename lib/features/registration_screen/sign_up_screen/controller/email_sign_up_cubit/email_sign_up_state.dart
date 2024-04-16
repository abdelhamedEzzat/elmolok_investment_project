part of 'email_sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSuccess extends SignUpState {}

final class SignUpFaild extends SignUpState {
  final String error;

  SignUpFaild({required this.error});
}
