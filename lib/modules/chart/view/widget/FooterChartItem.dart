import 'package:flutter/material.dart';

class FooterChartitem_price extends StatelessWidget {
  const FooterChartitem_price({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('\$25',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Text('2x uds.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Text('Total: \$50',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
