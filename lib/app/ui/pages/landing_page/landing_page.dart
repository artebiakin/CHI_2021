import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/landing_controller.dart';
import '../../global_widgets/layout.dart';

class LandingPage extends GetView<LandingController> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            constraints: const BoxConstraints(maxWidth: 400),
            child: Form(
              key: controller.key,
              child: Wrap(
                runSpacing: 25,
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    'Log in',
                    style: Get.textTheme.headline6,
                  ),
                  Column(
                    children: [
                      TextFormField(
                        controller: controller.emailController,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(hintText: 'Email'),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) =>
                            GetUtils.isEmail(value ?? '') ? null : '',
                      ),
                      TextFormField(
                        controller: controller.passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(hintText: 'Password'),
                        textAlign: TextAlign.center,
                        validator: (value) => (value != null &&
                                value.isNotEmpty &&
                                value.length > 5)
                            ? null
                            : '',
                      ),
                      const SizedBox(height: 10)
                    ],
                  ),
                  ElevatedButton(
                    onPressed: controller.login,
                    child: const Text('next'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
