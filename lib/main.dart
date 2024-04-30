import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '/app.dart';
import '/firebase_options.dart';
import 'data/repositories/authentication/authentication_repository.dart';

Future<void> main() async {
  ///* WidgetsBinding - - - - - - - - - - - - - - - - -
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  ///* GetStorage_init - - - - - - - - - - - - - - - - -
  await GetStorage.init();

  ///* Await until Items load - - - - - - - - - - - - - - - - -
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  ///* Init Firebase - - - - - - - - - - - - - - - - -
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));

  runApp(const App());
}
