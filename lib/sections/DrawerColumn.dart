import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerColumn extends StatelessWidget {
  const DrawerColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
              borderRadius:
                  const BorderRadius.all(Radius.elliptical(100.0, 100.0)),
              child: Image.asset(
                "assets/images/dp.jpg",
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: AutoSizeText(
                "Dayamoy Adhikari",
                minFontSize: 24,
                style: GoogleFonts.rubik(fontWeight: FontWeight.w600),
              ),
            ),
            IconButton(
                icon: const Icon(Icons.clear),
                splashRadius: 20.0,
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              splashFactory: InkRipple.splashFactory,
              onHover: (bool isHovered) {},
              onTap: () async {
                await launch("https://damercy.github.io/compute/");
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: AutoSizeText(
                      "Blog",
                      minFontSize: 20,
                      style: GoogleFonts.rubik(fontWeight: FontWeight.w400),
                    ),
                  ),
                  IconButton(
                      icon: const Icon(Icons.launch_rounded),
                      iconSize: 20,
                      splashRadius: 0.1,
                      // Negligible splash for no ripple effect
                      onPressed: () async {
                        await launch("https://damercy.github.io/compute/");
                      })
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
