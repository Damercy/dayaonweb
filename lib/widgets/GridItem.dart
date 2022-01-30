import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imageUrl, text;

  const GridItem({Key? key, required this.imageUrl, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.network(imageUrl),
          const SizedBox(height: 10),
          Text(text, style: Theme.of(context).textTheme.bodyText1)
        ],
      ),
    );
  }
}
