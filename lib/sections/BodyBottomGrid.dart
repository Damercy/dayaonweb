import 'package:dayaonweb/utils/ScreenSize.dart';
import 'package:dayaonweb/widgets/GridItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BodyBottomGrid extends StatelessWidget {
  const BodyBottomGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: ScreenSize.isLargeScreenDevice(context) ? 3 : 2,
      crossAxisSpacing: 24,
      mainAxisSpacing: 32,
      children: const [
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/quoter.webp",
              text: "📱 Minimalist quotes app side project"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/fishing_03.jpg",
              text: "🎣 Fishing in the past time"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/cooking.jpg",
              text: "🍳 Let's cook some chicken"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/slash_keyboard.gif",
              text: "🔢 Built a customizable keyboard library"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/hair_02.jpg",
              text: "💇 I like long hair"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/gpu.jpg",
              text: "🖥️ Holding a Nvidia GT 610 - my first proper GPU"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/beach.jpg",
              text: "🏖️ Maybe I'm a beach person?"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/lyt.webp",
              text: "📱 LYT app @microfinance.ai"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/dates.jpg",
              text: "🛖 A makeshift traditional hut where date sap is made"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/polo.jpg",
              text: "🐶 I've a Polo, tumhare paas kya hai?"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl: "assets/images/rig.jpg",
              text: "🕹️ Love PC games! Gamer tag - Damercy"),
        )
      ],
    );
  }
}
