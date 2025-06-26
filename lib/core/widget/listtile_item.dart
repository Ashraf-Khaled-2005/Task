import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/modules/home/data/listTile_model.dart';

class CustomLIstTileItem extends StatelessWidget {
  final ItemModel item;
  const CustomLIstTileItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.brownRosy,
          child: Icon(item.icon)),
      title: Text(
        item.title,
        style: TextStyle(color: AppColors.black, fontSize: 24),
      ),
    );
  }
}
