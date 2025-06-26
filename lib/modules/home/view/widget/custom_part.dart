import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/modules/home/data/listTile_model.dart';

class Custompart extends StatelessWidget {
  final VoidCallback? ontap;
  final ItemModel item;
  const Custompart({
    super.key,
    required this.item,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: ontap,
          child: Column(
            children: [
              Icon(
                item.icon,
                color: AppColors.black,
                size: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                item.title,
                style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
