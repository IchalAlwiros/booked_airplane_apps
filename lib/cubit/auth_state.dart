part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final UsersModel user;
  AuthSuccess(this.user);

  @override
  List<Object> get props => [user];
}

class AuthFiled extends AuthState {
  final String error;

  AuthFiled(this.error);

  @override
  List<Object> get props => [error];
}
