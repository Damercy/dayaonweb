import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        )
      ],
    );
  }
}
