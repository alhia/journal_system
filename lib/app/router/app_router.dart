import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:journal_system/app/router/auth_guard.dart';

import '../../src/features/auth/presentation/pages/auth_page.dart';
import '../../src/features/dashboard/presentation/pages/appointments_detail_page.dart';
import '../../src/features/dashboard/presentation/pages/appointments_page.dart';
import '../../src/features/dashboard/presentation/pages/dashboard_page.dart';
import '../../src/features/dashboard/presentation/pages/dashboard_tab_page.dart';
import '../../src/features/dashboard/presentation/pages/patients/patients_details_page.dart';
import '../../src/features/dashboard/presentation/pages/patients/patients_page.dart';
import '../../src/features/home/presentation/pages/booking_form_page.dart';
import '../../src/features/home/presentation/pages/booking_page.dart';
import '../../src/features/home/presentation/pages/booking_tab_page.dart';
import '../../src/features/home/presentation/pages/home_page.dart';

part 'app_router.gr.dart';

Route<T> myCustomRouteBuilder<T>(
    BuildContext context, Widget child, CustomPage<T> page) {
  return PageRouteBuilder(
      fullscreenDialog: page.fullscreenDialog,
      // this is important
      settings: page,
      pageBuilder: (context, __, ___) => child);
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeTabPage, initial: true, children: [
      AutoRoute(
        page: HomePage,
        initial: true,
      ),
      AutoRoute(
          path: 'book',
          name: 'BookingTab',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              initial: true,
              page: BookingPage,
            ),
            AutoRoute(
              path: ':id',
              initial: true,
              page: BookingFormPage,
            ),
          ]),
    ]),
    AutoRoute(
      path: '/login',
      page: AuthPage,
    ),
    AutoRoute(
      guards: [AuthGuard],
      path: '/journal',
      page: DashboardTabPage,
      children: [
        AutoRoute(
          path: 'dashboard',
          initial: true,
          name: 'DashboardTab',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              initial: true,
              page: DashboardPage,
            ),
          ],
        ),
        AutoRoute(
            path: 'appointments',
            name: 'AppointmentsTab',
            page: EmptyRouterPage,
            children: [
              AutoRoute(initial: true, page: AppointmentsPage),
              CustomRoute(
                fullscreenDialog: true,
                path: ':rid',
                page: AppointmentsDetailsPage,
                customRouteBuilder: myCustomRouteBuilder,
              ),
            ]),
        AutoRoute(
            path: 'patients',
            name: 'PatientsTab',
            page: EmptyRouterPage,
            children: [
              AutoRoute(initial: true, page: PatientsPage),
              AutoRoute(
                path: ':rid',
                page: PatientDetailsPage,
                fullscreenDialog: true,
              )
            ])
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter(
    AuthenticationRepository authService,
  ) : super(
          authGuard: AuthGuard(authService),
        );
}

/* class Routes {
  static const home = '/home';
  static const auth = '/auth';
  static const dashboard = '/dashboad';
  static const appointments = 'appointments'
} */
