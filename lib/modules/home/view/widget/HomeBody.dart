import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/modules/home/controller/home_controller.dart';
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
    final controller = Get.find<HomeController>();

    return Column(
      children: [
        CustomImage(image: controller.user.value!.image),
        Text(
          controller.user.value?.name ?? 'Loading...',
          style: const TextStyle(
              fontSize: 28,
              color: AppColors.orangeDark,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        CustomIDText(id: controller.user.value?.id ?? 0),
        const SizedBox(height: 20),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
                color: AppColors.salmon,
                borderRadius: BorderRadius.circular(24)),
            child: CustomPartsList(
              user: controller.user.value!,
            )),
        const SizedBox(
          height: 20,
        ),
        const CustomListview(items: items),
      ],
    );
  }
}
