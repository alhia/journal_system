import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/flutter_login.dart';

import '../../../features.dart';

class AuthForm extends StatelessWidget {
  final void Function(bool isLoggedIn)? onLoginResult;
  const AuthForm({Key? key, this.onLoginResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();

        return FlutterLogin(
          onLogin: cubit.onSignIn,
          onSignup: cubit.onSignUp,
          onRecoverPassword: cubit.onRecoverPassword,
          additionalSignupFields: const [
            UserFormField(keyName: AuthCubit.firstNameKey),
            UserFormField(keyName: AuthCubit.lastNameKey)
          ],
          onSubmitAnimationCompleted: () => onLoginResult != null
              ? onLoginResult!.call(true)
              : AutoRouter.of(context).replaceNamed('/dashboard'),
        );
      },
    );
  }
}
