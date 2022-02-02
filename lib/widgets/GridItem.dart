import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imageUrl, text;

  const GridItem({Key? key, required this.imageUrl, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imageUrl)),
        const SizedBox(height: 8),
        AutoSizeText(text,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.merge(const TextStyle(fontWeight: FontWeight.w600))),
        const SizedBox(height: 8),
      ],
    );
  }
}
