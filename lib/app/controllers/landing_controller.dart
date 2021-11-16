import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/models/user.dart';
import '../data/services/interface/i_auth_service.dart';
import '../routes/app_pages.dart';

class LandingController extends GetxController {
  final IAuthService authService = Get.find();

  final GlobalKey<FormState> key = GlobalKey();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login() async {
    if (key.currentState!.validate()) {
      final email = emailController.text;
      final password = passwordController.text;

      final loginStatus = await Get.showOverlay(
          loadingWidget: const Center(child: CircularProgressIndicator()),
          asyncFunction: () =>
              authService.login(email: email, password: password));

      loginStatus.fold(
        (l) => Get.rawSnackbar(message: l.message),
        (user) {
          if (user is AuthorizedUser) {
            Get.offAllNamed(Routes.HOME);
          }
        },
      );
    }
  }
}
