import 'package:flutter/material.dart';

class IntroBodyTop extends StatelessWidget {
  const IntroBodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Android Developer",
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
