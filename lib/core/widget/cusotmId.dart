import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';

class CustomIDText extends StatelessWidget {
  final int id;
  const CustomIDText({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: AppColors.black),
          children: [
            const TextSpan(
                text: "ID: ",
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold)),
            TextSpan(text: id.toString())
          ],
        ));
  }
}
