import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:task/data/chartItemModel.dart';
import 'package:task/modules/chart/view/widget/FooterChartItem.dart';
import 'package:task/modules/chart/view/widget/headchart.dart';

class OrderItemCard extends StatelessWidget {
  final ChartItemModel item;
  const OrderItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: HeadChartItem(date: item.date, status: item.status),
        ),
        const Divider(
          color: Color(0xFFF4B5A4),
          thickness: 1,
          height: 24,
          indent: 16,
          endIndent: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/item2.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
                        color: Color(0xFFCC7861),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.description,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              // Actions
              Obx(() => Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline),
                        color: const Color(0xFFCC7861),
                        onPressed: () {
                          if (item.quantity.value > 1) {
                            item.quantity.value--;
                          }
                        },
                      ),
                      Text(item.quantity.value.toString()),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline),
                        color: const Color(0xFFCC7861),
                        onPressed: () {
                          item.quantity.value++;
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Obx(() => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: FooterChartitem_price(
                price: item.price,
                quantity: item.quantity.value,
              ),
            )),
        const SizedBox(height: 24),
      ],
    );
  }
}
