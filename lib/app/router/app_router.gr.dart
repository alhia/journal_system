// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.authGuard})
      : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeTabPage());
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: AuthPage(key: args.key, onLoginResult: args.onLoginResult));
    },
    DashboardTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DashboardTabPage());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    BookingTab.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    BookingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const BookingPage());
    },
    BookingFormRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookingFormRouteArgs>(
          orElse: () => BookingFormRouteArgs(id: pathParams.getString('id')));
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: BookingFormPage(key: args.key, id: args.id));
    },
    DashboardTab.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    AppointmentsTab.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    PatientsTab.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    DashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DashboardPage());
    },
    AppointmentsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AppointmentsPage());
    },
    AppointmentsDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AppointmentsDetailsRouteArgs>(
          orElse: () =>
              AppointmentsDetailsRouteArgs(rid: pathParams.getString('rid')));
      return CustomPage<dynamic>(
          routeData: routeData,
          child: AppointmentsDetailsPage(key: args.key, rid: args.rid),
          fullscreenDialog: true,
          customRouteBuilder: myCustomRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    PatientsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PatientsPage());
    },
    PatientDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PatientDetailsRouteArgs>(
          orElse: () =>
              PatientDetailsRouteArgs(rid: pathParams.getString('rid')));
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: PatientDetailsPage(key: args.key, rid: args.rid),
          fullscreenDialog: true);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeTabRoute.name, path: '/', children: [
          RouteConfig(HomeRoute.name, path: '', parent: HomeTabRoute.name),
          RouteConfig(BookingTab.name,
              path: 'book',
              parent: HomeTabRoute.name,
              children: [
                RouteConfig(BookingRoute.name,
                    path: '', parent: BookingTab.name),
                RouteConfig(BookingFormRoute.name,
                    path: ':id', parent: BookingTab.name)
              ])
        ]),
        RouteConfig(AuthRoute.name, path: '/login'),
        RouteConfig(DashboardTabRoute.name, path: '/journal', guards: [
          authGuard
        ], children: [
          RouteConfig('#redirect',
              path: '',
              parent: DashboardTabRoute.name,
              redirectTo: 'dashboard',
              fullMatch: true),
          RouteConfig(DashboardTab.name,
              path: 'dashboard',
              parent: DashboardTabRoute.name,
              children: [
                RouteConfig(DashboardRoute.name,
                    path: '', parent: DashboardTab.name)
              ]),
          RouteConfig(AppointmentsTab.name,
              path: 'appointments',
              parent: DashboardTabRoute.name,
              children: [
                RouteConfig(AppointmentsRoute.name,
                    path: '', parent: AppointmentsTab.name),
                RouteConfig(AppointmentsDetailsRoute.name,
                    path: ':rid', parent: AppointmentsTab.name)
              ]),
          RouteConfig(PatientsTab.name,
              path: 'patients',
              parent: DashboardTabRoute.name,
              children: [
                RouteConfig(PatientsRoute.name,
                    path: '', parent: PatientsTab.name),
                RouteConfig(PatientDetailsRoute.name,
                    path: ':rid', parent: PatientsTab.name)
              ])
        ])
      ];
}

/// generated route for
/// [HomeTabPage]
class HomeTabRoute extends PageRouteInfo<void> {
  const HomeTabRoute({List<PageRouteInfo>? children})
      : super(HomeTabRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeTabRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({Key? key, void Function(bool)? onLoginResult})
      : super(AuthRoute.name,
            path: '/login',
            args: AuthRouteArgs(key: key, onLoginResult: onLoginResult));

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key, this.onLoginResult});

  final Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [DashboardTabPage]
class DashboardTabRoute extends PageRouteInfo<void> {
  const DashboardTabRoute({List<PageRouteInfo>? children})
      : super(DashboardTabRoute.name,
            path: '/journal', initialChildren: children);

  static const String name = 'DashboardTabRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [EmptyRouterPage]
class BookingTab extends PageRouteInfo<void> {
  const BookingTab({List<PageRouteInfo>? children})
      : super(BookingTab.name, path: 'book', initialChildren: children);

  static const String name = 'BookingTab';
}

/// generated route for
/// [BookingPage]
class BookingRoute extends PageRouteInfo<void> {
  const BookingRoute() : super(BookingRoute.name, path: '');

  static const String name = 'BookingRoute';
}

/// generated route for
/// [BookingFormPage]
class BookingFormRoute extends PageRouteInfo<BookingFormRouteArgs> {
  BookingFormRoute({Key? key, required String id})
      : super(BookingFormRoute.name,
            path: ':id',
            args: BookingFormRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'BookingFormRoute';
}

class BookingFormRouteArgs {
  const BookingFormRouteArgs({this.key, required this.id});

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'BookingFormRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class DashboardTab extends PageRouteInfo<void> {
  const DashboardTab({List<PageRouteInfo>? children})
      : super(DashboardTab.name, path: 'dashboard', initialChildren: children);

  static const String name = 'DashboardTab';
}

/// generated route for
/// [EmptyRouterPage]
class AppointmentsTab extends PageRouteInfo<void> {
  const AppointmentsTab({List<PageRouteInfo>? children})
      : super(AppointmentsTab.name,
            path: 'appointments', initialChildren: children);

  static const String name = 'AppointmentsTab';
}

/// generated route for
/// [EmptyRouterPage]
class PatientsTab extends PageRouteInfo<void> {
  const PatientsTab({List<PageRouteInfo>? children})
      : super(PatientsTab.name, path: 'patients', initialChildren: children);

  static const String name = 'PatientsTab';
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [AppointmentsPage]
class AppointmentsRoute extends PageRouteInfo<void> {
  const AppointmentsRoute() : super(AppointmentsRoute.name, path: '');

  static const String name = 'AppointmentsRoute';
}

/// generated route for
/// [AppointmentsDetailsPage]
class AppointmentsDetailsRoute
    extends PageRouteInfo<AppointmentsDetailsRouteArgs> {
  AppointmentsDetailsRoute({Key? key, required String rid})
      : super(AppointmentsDetailsRoute.name,
            path: ':rid',
            args: AppointmentsDetailsRouteArgs(key: key, rid: rid),
            rawPathParams: {'rid': rid});

  static const String name = 'AppointmentsDetailsRoute';
}

class AppointmentsDetailsRouteArgs {
  const AppointmentsDetailsRouteArgs({this.key, required this.rid});

  final Key? key;

  final String rid;

  @override
  String toString() {
    return 'AppointmentsDetailsRouteArgs{key: $key, rid: $rid}';
  }
}

/// generated route for
/// [PatientsPage]
class PatientsRoute extends PageRouteInfo<void> {
  const PatientsRoute() : super(PatientsRoute.name, path: '');

  static const String name = 'PatientsRoute';
}

/// generated route for
/// [PatientDetailsPage]
class PatientDetailsRoute extends PageRouteInfo<PatientDetailsRouteArgs> {
  PatientDetailsRoute({Key? key, required String rid})
      : super(PatientDetailsRoute.name,
            path: ':rid',
            args: PatientDetailsRouteArgs(key: key, rid: rid),
            rawPathParams: {'rid': rid});

  static const String name = 'PatientDetailsRoute';
}

class PatientDetailsRouteArgs {
  const PatientDetailsRouteArgs({this.key, required this.rid});

  final Key? key;

  final String rid;

  @override
  String toString() {
    return 'PatientDetailsRouteArgs{key: $key, rid: $rid}';
  }
}
