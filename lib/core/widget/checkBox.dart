import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  final String text;
  final bool selected;

  const GenderBox({super.key, required this.text, required this.selected});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF4B5A4) : const Color(0xFFFAF0E6),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            selected ? Icons.radio_button_checked : Icons.radio_button_off,
            color: selected ? Colors.white : Colors.black54,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: selected ? Colors.white : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
