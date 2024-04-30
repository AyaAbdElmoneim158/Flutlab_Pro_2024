import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../common/widgets/loaders/loaders.dart';
import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/helpers/network_manager.dart';
import '../../../../util/popups/full_screen_loader.dart';
import '../../../personalization/controllers/user_controller.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  final hidePassword = false.obs;
  final rememberMe = true.obs;

  @override
  void onInit() {
    email.text = localStorage.read("STORAGE_EMAIl");
    password.text = localStorage.read("STORAGE_PASSWORD");
    super.onInit();
  }

  Future<void> loginWithEmailAndPassword() async {
    try {
      ///* Start Loading - - - - - - - - - - - - - - - - - - - - - - -
      TFullScreenLoader.openLoadingDialog(
        "Logging you in....",
        TImage.animation,
      );

      ///* Check Internet Connectivity - - - - - - - - - - - - - - - - - - - - - - -
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      ///* Form Validation - - - - - - - - - - - - - - - - - - - - - - -
      if (!signInFormKey.currentState!.validate()) return;

      ///* Privacy Policy Check - - - - - - - - - - - - - - - - - - - - - - -
      if (rememberMe.value) {
        localStorage.write("STORAGE_EMAIl", email.text.trim());
        localStorage.write("STORAGE_PASSWORD", email.text.trim());
      }

      ///* Login user in the Firebase Authentication & Save user data in the Firebase
      await AuthenticationRepository.instance.loginWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      TFullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }

  Future<void> googleSignIn() async {
    try {
      TFullScreenLoader.openLoadingDialog(
          "Logging you in...", TImage.animation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      final userCredentials =
          await AuthenticationRepository.instance.signInWithGoogle();
      await UserController.saveUserRecord(userCredentials);

      TFullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      AppLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
      TFullScreenLoader.stopLoading();
    }
  }
}
