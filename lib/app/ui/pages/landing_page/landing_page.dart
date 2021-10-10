import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/landing_controller.dart';

class LandingPage extends GetView<LandingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LandingPage'),
      ),
      body: const SafeArea(
        child: Text('LandingController'),
      ),
    );
  }
}
