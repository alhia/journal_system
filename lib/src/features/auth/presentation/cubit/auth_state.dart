part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.signIn() = _SignIn;
  const factory AuthState.signUp() = _SignUp;
}
