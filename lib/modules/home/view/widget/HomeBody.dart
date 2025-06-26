import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/modules/home/view/widget/CustomPart_list.dart';
import 'package:task/core/widget/cusotmId.dart';
import 'package:task/modules/home/view/widget/customListview.dart';
import 'package:task/modules/home/view/widget/custom_part.dart';
import 'package:task/core/widget/customdivider.dart';
import 'package:task/core/widget/customimage.dart';
import 'package:task/modules/home/view/widget/listtile_item.dart';
import 'package:task/modules/home/data/listTile_model.dart';

class HomeBody extends StatelessWidget {
  static const List<ItemModel> items = [
    ItemModel(icon: Icons.key, title: "Privacy Policy"),
    ItemModel(icon: Icons.payment, title: "Payment Methods"),
    ItemModel(icon: Icons.notifications_active, title: "Notifications"),
    ItemModel(icon: Icons.settings, title: "Settings"),
    ItemModel(icon: Icons.help, title: "Help"),
    ItemModel(icon: Icons.logout, title: "Logout"),
  ];
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomImage(),
        const Text(
          "John Doe",
          style: TextStyle(
              fontSize: 28,
              color: AppColors.orangeDark,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const CustomIDText(),
        const SizedBox(height: 20),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
                color: AppColors.salmon,
                borderRadius: BorderRadius.circular(24)),
            child: const CustomPartsList()),
        const SizedBox(
          height: 20,
        ),
        const CustomListview(items: items),
      ],
    );
  }
}
