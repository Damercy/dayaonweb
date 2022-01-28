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
      children: [
        Text(
          "Android Engineer",
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(
          height: 32,
        ),
        Flexible(
          child: RichText(
            text: TextSpan(
              text:
                  "👋🏻 Hi, I'm Dayamoy Adhikari and I design beautiful android experiences for people. Currently pushing builds at ",
              children: [
                TextSpan(
                    text: "WedMeGood",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        letterSpacing: 0.5,
                        decorationThickness: 1.5,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        await launch("https://www.wedmegood.com");
                      }),
                const TextSpan(text: " and previously at "),
                TextSpan(
                    text: "Microfinance.ai",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        letterSpacing: 0.5,
                        decorationThickness: 1.5,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        await launch("https://www.microfinance.ai");
                      }),
                const TextSpan(text: ".")
              ],
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.w900, height: 1.5, letterSpacing: 0.5),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Flexible(
          child: RichText(
            text: TextSpan(
              text:
                  "I've been part of the core team at Microfinance.ai where I ideated, designed & developed the app that helped raise pre-seed amount of ",
              children: [
                TextSpan(
                    text: "\$200k",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        letterSpacing: 0.5,
                        decorationThickness: 1.5,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        await launch(
                            "https://www.entrepreneur.com/article/400331");
                      }),
                const TextSpan(text: ".")
              ],
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.w900, height: 1.5, letterSpacing: 0.5),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Flexible(
          child: RichText(
            text: TextSpan(
              text: "You can connect with me on ",
              children: [
                TextSpan(
                    text: "Twitter",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        letterSpacing: 0.5,
                        decorationThickness: 1.5,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        await launch("https://twitter.com/damercysiyzarc");
                      }),
                const TextSpan(text: " or "),
                TextSpan(
                    text: "LinkedIn",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        letterSpacing: 0.5,
                        decorationThickness: 1.5,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        await launch("https://in.linkedin.com/in/damercy");
                      }),
                const TextSpan(text: ".")
              ],
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.w900, height: 1.5, letterSpacing: 0.5),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton.icon(
            icon: const Icon(Icons.download_rounded),
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                padding: MaterialStateProperty.all(const EdgeInsets.all(24.0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)))),
                splashFactory: InkSplash.splashFactory),
            onPressed: () async {
              await launch(
                  "https://drive.google.com/file/d/1ahZ4pxjXDqXIiN8gMSxFbVGV7oc3-4yi/view?usp=sharing");
            },
            label: Text("DOWNLOAD RESUME",
                style: Theme.of(context).textTheme.button?.copyWith(
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: Colors.white,
                    letterSpacing: 1.0))),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton.icon(
            icon: const FaIcon(FontAwesomeIcons.github),
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                padding: MaterialStateProperty.all(const EdgeInsets.all(24.0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)))),
                splashFactory: InkSplash.splashFactory),
            onPressed: () async {
              await launch("https://www.github.com/Damercy");
            },
            label: Text("FOLLOW ON GITHUB",
                style: Theme.of(context).textTheme.button?.copyWith(
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: Colors.white,
                    letterSpacing: 1.0)))
      ],
    );
  }
}
