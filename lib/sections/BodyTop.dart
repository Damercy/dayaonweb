import 'package:dayaonweb/sections/IntroBodyTop.dart';
import 'package:dayaonweb/utils/ScreenSize.dart';
import 'package:dayaonweb/widgets/GridItem.dart';
import 'package:flutter/material.dart';

class BodyTop extends StatelessWidget {
  const BodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: ScreenSize.isLargeScreenDevice(context)
          ? Axis.horizontal
          : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(child: IntroBodyTop()),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
          child: ClipRRect(
              borderRadius:
                  const BorderRadius.all(Radius.elliptical(120.0, 120.0)),
              child: Image.network(
                "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg",
              )),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
