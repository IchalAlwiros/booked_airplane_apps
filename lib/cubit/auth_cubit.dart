import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_airplane/models/users_model.dart';
import 'package:flutter_airplane/services/auth_service.dart';
import 'package:flutter_airplane/services/user_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      emit(AuthLoading());
      UsersModel user = await AuthServices()
          .signUp(email: email, password: password, name: name, hobby: hobby);

      emit(AuthSuccess(user));
    } catch (e) {
      emit(
        AuthFiled(
          e.toString(),
        ),
      );
    }
  }

  void signIn({required String email, required String password}) async {
    try {
      emit(AuthLoading());
      UsersModel user =
          await AuthServices().signIn(email: email, password: password);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(
        AuthFiled(
          e.toString(),
        ),
      );
    }
  }

  void signOut() async {
    try {
      emit(AuthLoading());
      await AuthServices().signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(
        AuthFiled(
          e.toString(),
        ),
      );
    }
  }

  void getCurrentUser(String id) async {
    try {
      UsersModel user = await UserService().getUserById(id);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(
        AuthFiled(
          e.toString(),
        ),
      );
    }
  }
}
