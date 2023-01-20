import 'package:authentication_repository/authentication_repository.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:fluent_ui/fluent_ui.dart' show DefaultFluentLocalizations;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:journal_system/app/router/app_router.dart';
import 'package:timetable/timetable.dart';

import '../src/features/auth/auth.dart';

/// The Widget that configures your application.
class App extends StatelessWidget {
  App({
    Key? key,
  }) : super(key: key);

  final _appRouter = GetIt.I.get<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => GetIt.I.get<AuthenticationRepository>(),
        ),
        RepositoryProvider(
          create: (context) => BookingsRepository(),
        ),
      ],
      child: BlocProvider<AuthCubit>(
        create: (context) => AuthCubit(GetIt.I.get<AuthenticationRepository>()),
        child: MaterialApp.router(
          localizationsDelegates: const [
            DefaultFluentLocalizations.delegate,
            TimetableLocalizationsDelegate(setIntlLocale: false),
          ],
          themeMode: ThemeMode.system,
          darkTheme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color(0xFF090A0A),
            cardColor: const Color(0xFF171819),
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF090A0A)),
          ),
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: const Color(0xFFF1F5F8),
          ),
          color: const Color(0xFFF1F5F8),
          routeInformationParser: _appRouter.defaultRouteParser(),
          routeInformationProvider: _appRouter.routeInfoProvider(),
          routerDelegate: _appRouter.delegate(),
        ),
      ),
    );

    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    /*  return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);
                  case SampleItemDetailsView.routeName:
                    return const SampleItemDetailsView();
                  case SampleItemListView.routeName:
                  default:
                    return const SampleItemListView();
                }
              },
            );
          },
        );
      },
    ); */
  }
}
