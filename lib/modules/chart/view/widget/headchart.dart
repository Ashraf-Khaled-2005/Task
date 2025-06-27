import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';

class HeadChartItem extends StatelessWidget {
  final String date, status;
  const HeadChartItem({
    super.key,
    required this.date,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Order: ${status}',
          style: TextStyle(color: AppColors.salmon, fontSize: 14),
        ),
        Text(
          'Date: ${date}',
          style: TextStyle(color: AppColors.salmon, fontSize: 14),
        ),
      ],
    );
  }
}
