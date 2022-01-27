import 'package:flutter/material.dart';

class BodyTop extends StatelessWidget {
  const BodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Android Developer",
          style: Theme.of(context).textTheme.headline2,
        )
      ],
    );
  }
}
