import 'package:flutter/material.dart';

class IntroBodyTop extends StatelessWidget {
  const IntroBodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Android Engineer",
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
        ),
        const SizedBox(
          height: 32,
        ),
        Flexible(
          child: Text(
            "I've been part of the core team at Microfinance.ai where I ideated, designed & developed the app that helped raise pre-seed amount of \$200k.",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w900, height: 1.5, letterSpacing: 0.5),
            softWrap: true,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Flexible(
          child: Text(
            "You can connect with me on Twitter or LinkedIn.",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w900, height: 1.5, letterSpacing: 0.5),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
