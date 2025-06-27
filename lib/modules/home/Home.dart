import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/main.dart';
import 'package:task/modules/home/controller/home_controller.dart';
import 'package:task/modules/home/view/widget/HomeBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "My Profile",
          style: TextStyle(fontSize: 24, color: AppColors.salmon),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: AppColors.brownRosy))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          if (controller.error.isNotEmpty) {
            return Center(child: Text(controller.error.value));
          }
          return HomeBody();
        }),
      ),
    );
  }
}
