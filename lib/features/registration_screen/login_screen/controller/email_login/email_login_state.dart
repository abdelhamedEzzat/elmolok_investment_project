part of 'email_login_cubit.dart';

@immutable
sealed class EmailLoginState {}

final class EmailLoginInitial extends EmailLoginState {}

final class LoginLoading extends EmailLoginState {}

final class LoginSuccess extends EmailLoginState {}

final class LoginFaild extends EmailLoginState {
  final String error;

  LoginFaild({required this.error});
}

final class ResetPassworedLoading extends EmailLoginState {}

final class ResetPassworedSuccess extends EmailLoginState {}

final class ResetPassworedfaild extends EmailLoginState {
  final String error;

  ResetPassworedfaild({required this.error});
}
