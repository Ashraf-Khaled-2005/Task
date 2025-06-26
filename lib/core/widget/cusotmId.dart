import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';

class CustomIDText extends StatelessWidget {
  const CustomIDText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(fontSize: 16, color: AppColors.black),
          children: [
            TextSpan(
                text: "ID: ",
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold)),
            TextSpan(text: "1234654657")
          ],
        ));
  }
}
