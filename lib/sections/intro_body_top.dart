import 'package:dayaonweb/utils/screen_size.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroBodyTop extends StatelessWidget {
  const IntroBodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: !ScreenSize.isLargeScreenDevice(context)
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        Text("Android Engineer",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 32,
        ),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            text:
                "👋🏻 Hi, I'm Dayamoy Adhikari and I design beautiful, native android experiences for people. Currently pushing builds at ",
            children: [
              TextSpan(
                  text: "Paytm Insider",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launch("https://www.insider.in");
                    }),
              const TextSpan(text: " and previously at "),
              TextSpan(
                  text: "WedMeGood",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launch("https://www.wedmegood.com");
                    }),
              const TextSpan(text: " & "),
              TextSpan(
                  text: "Microfinance.ai",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launch("https://www.microfinance.ai");
                    }),
              const TextSpan(text: ".")
            ],
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            text:
                "I've been part of the core team at Microfinance.ai where I ideated, designed & developed the app that helped raise pre-seed amount of ",
            children: [
              TextSpan(
                  text: "\$200k",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launch(
                          "https://www.entrepreneur.com/article/400331");
                    }),
              const TextSpan(text: ".")
            ],
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            text: "You can connect with me on ",
            children: [
              TextSpan(
                  text: "Twitter",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launch("https://twitter.com/damercysiyzarc");
                    }),
              const TextSpan(text: " or "),
              TextSpan(
                  text: "LinkedIn",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launch("https://in.linkedin.com/in/damercy");
                    }),
              const TextSpan(text: ".")
            ],
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Align(
            alignment: ScreenSize.isLargeScreenDevice(context)
                ? Alignment.topLeft
                : Alignment.center,
            child: ElevatedButton.icon(
                icon: const Icon(Icons.download_rounded),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 48.0, vertical: 24.0),
                  // Foreground color
                  onPrimary: Theme.of(context).colorScheme.onPrimary,
                  // Background color
                  primary: Theme.of(context).colorScheme.primary,
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () async {
                  await launch(
                      "https://drive.google.com/file/d/1ahZ4pxjXDqXIiN8gMSxFbVGV7oc3-4yi/view?usp=sharing");
                },
                label: const Text(
                  "Download Resume",
                ))),
        const SizedBox(
          height: 24,
        ),
        Align(
            alignment: ScreenSize.isLargeScreenDevice(context)
                ? Alignment.topLeft
                : Alignment.center,
            child: OutlinedButton.icon(
                icon: const FaIcon(FontAwesomeIcons.github),
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 48.0, vertical: 24.0)),
                onPressed: () async {
                  await launch("https://www.github.com/Damercy");
                },
                label: const Text(
                  "Follow on Github",
                )))
      ],
    );
  }
}
