import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/modules/home/view/widget/custom_part.dart';
import 'package:task/core/widget/customdivider.dart';
import 'package:task/modules/chart/view/chartview.dart';
import 'package:task/modules/home/data/listTile_model.dart';
import 'package:task/modules/profile/view/profileview.dart';

class CustomPartsList extends StatelessWidget {
  const CustomPartsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Custompart(
          item: const ItemModel(icon: Icons.person, title: "Profile"),
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const ProfileScreen())));
          }),
      const CustomDivider(),
      Custompart(
          item: const ItemModel(icon: Icons.favorite, title: "Wishlist")),
      Container(height: 50, width: 1.5, color: AppColors.beige),
      Custompart(
          ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const ChartView())));
          },
          item: ItemModel(icon: Icons.checklist, title: "My Orders")),
    ]);
  }
}
