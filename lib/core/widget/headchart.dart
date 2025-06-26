import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';

class HeadChartItem extends StatelessWidget {
  const HeadChartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Order: Canceled',
          style: TextStyle(color: AppColors.salmon, fontSize: 14),
        ),
        Text(
          'May 22',
          style: TextStyle(color: AppColors.salmon, fontSize: 14),
        ),
      ],
    );
  }
}
