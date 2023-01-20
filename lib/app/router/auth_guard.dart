import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';

import 'app_router.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthenticationRepository _authenticationRepository;
  AuthGuard(this._authenticationRepository);
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await _authenticationRepository.user.first != User.empty) {
      resolver.next(true);
    } else {
      router.push(AuthRoute(onLoginResult: (success) {
        resolver.next(success);
      }));
    }
  }
}
