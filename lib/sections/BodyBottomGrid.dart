import 'package:dayaonweb/widgets/GridItem.dart';
import 'package:flutter/material.dart';

class BodyBottomGrid extends StatelessWidget {
  const BodyBottomGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      crossAxisCount: 3,
      childAspectRatio: 0.5,
      children: [
        GridItem(
            imageUrl:
                "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg",
            text: "text"),
        GridItem(
            imageUrl:
                "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg",
            text: "text"),
        GridItem(
            imageUrl:
                "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg",
            text: "text"),
        GridItem(
            imageUrl:
                "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg",
            text: "text"),
        GridItem(
            imageUrl:
                "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg",
            text: "text")
      ],
    );
  }
}
