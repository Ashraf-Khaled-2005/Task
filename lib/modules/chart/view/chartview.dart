import 'package:flutter/material.dart';
import 'package:task/modules/chart/view/widget/chartitem.dart';

class ChartView extends StatelessWidget {
  const ChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemBuilder: (context, index) => const OrderItemCard())),
    );
  }
}
