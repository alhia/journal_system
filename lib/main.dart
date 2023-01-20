import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:journal_system/firebase_options.dart';

import 'app/app.dart';
import 'app/router/app_router.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureApp();

  GetIt.I.registerSingleton<AuthenticationRepository>(AuthenticationRepository(
      firebaseAuth: FirebaseAuth.instance..setPersistence(Persistence.LOCAL)));
  GetIt.I.registerSingleton(AppRouter(GetIt.I.get<AuthenticationRepository>()));

  runApp(App());
}
