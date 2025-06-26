import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 50, width: 1.5, color: AppColors.beige);
  }
}
