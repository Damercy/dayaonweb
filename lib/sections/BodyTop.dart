import 'package:dayaonweb/sections/IntroBodyTop.dart';
import 'package:dayaonweb/utils/ScreenSize.dart';
import 'package:flutter/material.dart';

class BodyTop extends StatelessWidget {
  const BodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: ScreenSize.isLargeScreenDevice(context)
          ? Axis.horizontal
          : Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenSize.isLargeScreenDevice(context) ? 0 : 8),
          child: const IntroBodyTop(),
        )),
        Padding(
          padding: EdgeInsets.fromLTRB(
              ScreenSize.isLargeScreenDevice(context) ? 32 : 0,
              ScreenSize.isLargeScreenDevice(context) ? 0 : 48,
              0,
              0),
          child: ClipRRect(
              borderRadius:
                  const BorderRadius.all(Radius.elliptical(120.0, 120.0)),
              child: Image.asset(
                "assets/images/dp.jpg",
              )),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
