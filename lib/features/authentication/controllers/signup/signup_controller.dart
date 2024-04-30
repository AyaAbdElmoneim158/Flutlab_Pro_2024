import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../../../data/user/user_repository.dart';
import '../../../../util/popups/full_screen_loader.dart';
import '../../../personalization/models/user_model.dart';
import '../../screens/signup/verify_email_screen.dart';
import '/common/widgets/loaders/loaders.dart';
import '/util/constants/image_strings.dart';
import '/util/helpers/network_manager.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///*Variables - - - - - - - - - - - - - - - - -
  final email = TextEditingController();
  final lastName = TextEditingController();
  final firstName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;

  //*SIGNUP - - - - - - - - - - - - - - - - - -
  Future<void> signup() async {
    try {
      ///* Start Loading - - - - - - - - - - - - - - - - - - - - - - -
      TFullScreenLoader.openLoadingDialog(
        "We are Process your information....",
        TImage.animation,
      );

      ///* Check Internet Connectivity - - - - - - - - - - - - - - - - - - - - - - -
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      ///* Form Validation - - - - - - - - - - - - - - - - - - - - - - -
      if (!signupFormKey.currentState!.validate()) return;

      ///* Privacy Policy Check - - - - - - - - - - - - - - - - - - - - - - -
      if (!privacyPolicy.value) {
        AppLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.',
        );
        return;
      }

      ///* Register user in the Firebase Authentication & Save user data in the Firebase
      final userCredential =
          await AuthenticationRepository.instance.registerWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      //* Save Authenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      //* Show Success Message
      AppLoaders.successSnackBar(
        title: 'Congratulations',
        message: 'Your account has been created! Verify email to continue.',
      );

      //* Move to Verify Email Screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
