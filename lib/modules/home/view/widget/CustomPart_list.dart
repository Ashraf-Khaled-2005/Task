import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/data/UserModel.dart';
import 'package:task/modules/home/view/widget/custom_part.dart';
import 'package:task/core/widget/customdivider.dart';
import 'package:task/modules/chart/view/chartview.dart';
import 'package:task/modules/home/data/listTile_model.dart';
import 'package:task/modules/profile/view/profileview.dart';
import 'package:task/routes/Approutes.dart';

class CustomPartsList extends StatelessWidget {
  final UserModel user;
  const CustomPartsList({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Custompart(
          item: const ItemModel(icon: Icons.person, title: "Profile"),
          ontap: () {
            Get.toNamed(AppRoutes.profile, arguments: {"user": user});
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
