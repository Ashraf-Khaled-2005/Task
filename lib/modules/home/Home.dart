import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/main.dart';
import 'package:task/modules/home/view/widget/HomeBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(16.0),
        child: HomeBody(),
      ),
    );
  }
}
