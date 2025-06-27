import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String image;
  const CustomImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80,
      backgroundImage: image.isNotEmpty
          ? NetworkImage(image)
          : const AssetImage('assets/item2.png') as ImageProvider,
    );
  }
}
