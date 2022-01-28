import 'package:flutter/material.dart';

class IntroBodyTop extends StatelessWidget {
  const IntroBodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Android Developer",
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(
          height: 32,
        ),
        Flexible(
          child: Text(
            "👋🏻 Hi, I'm Dayamoy Adhikari and I design beautiful android experiences for people. Currently pushing builds at WedMeGood and previously at Microfinance.ai.",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w900, height: 1.5, letterSpacing: 0.5),
            softWrap: true,
          ),
        )
      ],
    );
  }
}
