import 'package:dayaonweb/pages/IntroBodyTop.dart';
import 'package:dayaonweb/utils/ScreenSize.dart';
import 'package:flutter/material.dart';

class BodyTop extends StatelessWidget {
  const BodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Flex(
        direction: ScreenSize.isLargeScreenDevice(context)
            ? Axis.horizontal
            : Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IntroBodyTop(),
          ClipOval(
              child: Image.network(
                  "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg")),
        ],
      ),
    );
  }
}
