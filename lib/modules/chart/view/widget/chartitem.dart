import 'package:flutter/material.dart';
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
        // Header: Status + Date
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: HeadChartItem(
            date: item.date,
            status: item.status,
          ),
        ),
        const Divider(
          color: Color(0xFFF4B5A4),
          thickness: 1,
          height: 24,
          indent: 16,
          endIndent: 16,
        ),

        // Main Content Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/item2.png', // Example lamp image
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),

              // Title and Description
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(
                        color: Color(0xFFCC7861),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      item.description,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              // Action Icons
              const Row(
                children: [
                  Icon(Icons.delete_outline, color: Color(0xFFCC7861)),
                  SizedBox(width: 10),
                  Icon(Icons.add_circle_outline, color: Color(0xFFCC7861)),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        // Price Row
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child:
              FooterChartitem_price(price: item.price, quantity: item.quantity),
        ),

        const SizedBox(height: 24),
      ],
    );
  }
}
