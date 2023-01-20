import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  static const String firstNameKey = 'firstName';
  static const String lastNameKey = 'lastName';

  final AuthenticationRepository _authenticationRepository;
  AuthCubit(this._authenticationRepository) : super(const AuthState.initial());

  Future<String?> onSignIn(LoginData data) async {
    try {
      await _authenticationRepository.logInWithEmailAndPassword(
          email: data.name, password: data.password);
    } on LogInWithEmailAndPasswordFailure catch (e) {
      return e.message;
    }
  }

  Future<String?>? onRecoverPassword(String email) {}

  Future<String?>? onSignUp(SignupData data) async {
    try {
      print([data.name, data.password]);
      await _authenticationRepository.signUp(
          email: data.name ?? "",
          password: data.password ?? "",
          firstName: data.additionalSignupData?[firstNameKey] ?? "",
          lastName: data.additionalSignupData?[lastNameKey] ?? "");
    } on SignUpWithEmailAndPasswordFailure catch (e) {
      print(e.message);
      return e.message;
    }
  }
}
