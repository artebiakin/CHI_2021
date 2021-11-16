import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';

import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: controller.logOut,
              child: const Text(
                'LogOut',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: controller.loadNewBeers,
          child: const Icon(Icons.add_circle)),
      body: controller.obx(
        (beers) => GridView.builder(
          primary: false,
          itemCount: beers!.length,
          padding: const EdgeInsets.all(5),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => controller.goToDetails(beers[index].id),
            child: Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(20),
              color: Colors.black26,
              child: beers[index].imageUrl != null
                  ? Image.network(beers[index].imageUrl!)
                  : null,
            ),
          ),
        ),
        onError: (message) => Center(child: Text(message!)),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
