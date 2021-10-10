import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
