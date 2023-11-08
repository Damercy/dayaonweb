import 'package:dayaonweb/sections/intro_body_top.dart';
import 'package:dayaonweb/utils/screen_size.dart';
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
          child: ClipOval(
            child: Image.asset(
            "assets/images/dp.webp",
            width:  ScreenSize.isLargeScreenDevice(context)? 300.0 : 256.0 ,
            height: ScreenSize.isLargeScreenDevice(context)? 300.0 : 256.0 ,
          ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
