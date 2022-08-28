import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String text;
  final Image image;

  const GridItem({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return gridCard(context);
  }

  Widget gridCard(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(8), child: image),
          const SizedBox(height: 16),
          Center(
            child: AutoSizeText(
              text,
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
