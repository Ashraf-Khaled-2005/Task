import 'package:flutter/material.dart';
import 'package:task/modules/chart/view/widget/FooterChartItem.dart';
import 'package:task/modules/chart/view/widget/headchart.dart';

class OrderItemCard extends StatelessWidget {
  const OrderItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header: Status + Date
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: HeadChartItem(),
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
                child: Image.network(
                  'https://i.imgur.com/E0R1JZk.png', // Example lamp image
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),

              // Title and Description
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blue Table Lamp',
                      style: TextStyle(
                        color: Color(0xFFCC7861),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'In a laoreet purus. Integer turpis quam, laoreet id orci nec, ultrices…',
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: FooterChartitem_price(),
        ),

        const SizedBox(height: 24),
      ],
    );
  }
}
