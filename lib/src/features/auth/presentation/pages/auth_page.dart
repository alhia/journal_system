import 'package:flutter/material.dart';

import 'auth_form.dart';

class AuthPage extends StatelessWidget {
  final void Function(bool isLoggedIn)? onLoginResult;
  const AuthPage({Key? key, this.onLoginResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthForm(
      onLoginResult: onLoginResult,
    );
  }
}
