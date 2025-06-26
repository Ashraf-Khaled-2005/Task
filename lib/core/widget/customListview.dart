import 'package:flutter/material.dart';
import 'package:task/core/widget/listtile_item.dart';
import 'package:task/modules/home/data/listTile_model.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({
    super.key,
    required this.items,
  });

  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemBuilder: (context, index) {
        return CustomLIstTileItem(item: items[index]);
      },
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
