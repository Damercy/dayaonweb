import 'package:flutter/material.dart';

class BodyTop extends StatelessWidget {
  const BodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Android Developer",
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            "Android Developer 2",
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            "Android Developer 3",
            style: Theme.of(context).textTheme.headline2,
          )
        ],
      ),
    );
  }
}
