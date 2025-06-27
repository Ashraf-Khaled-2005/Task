import 'package:flutter/material.dart';

class FooterChartitem_price extends StatelessWidget {
  final num price, quantity;
  const FooterChartitem_price({
    super.key,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('\$$price',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Text('$quantity x uds.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Text('Total: \$${(price * quantity).toStringAsFixed(2)}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
