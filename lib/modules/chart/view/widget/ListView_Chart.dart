import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/modules/chart/controller/Chartcontroller.dart';

import 'package:task/modules/chart/view/widget/chartitem.dart';

class ListView_Chart extends StatelessWidget {
  const ListView_Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final constroll = Get.find<ChartController>();
    return ListView.separated(
        itemCount: constroll.chartItems.value.length,
        separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
        itemBuilder: (context, index) => OrderItemCard(
              item: constroll.chartItems.value[index],
            ));
  }
}
