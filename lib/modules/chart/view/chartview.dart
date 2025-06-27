import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/modules/chart/view/widget/ListView_Chart.dart';
import '../controller/Chartcontroller.dart';

class ChartView extends StatelessWidget {
  const ChartView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChartController());

    return Scaffold(
      appBar: AppBar(title: const Text('Chart')),
      body: SafeArea(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.errorMessage.isNotEmpty) {
            return Center(child: Text(controller.errorMessage.value));
          }

          return ListView_Chart();
        }),
      ),
    );
  }
}
