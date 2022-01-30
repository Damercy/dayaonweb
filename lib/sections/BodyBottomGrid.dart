import 'package:dayaonweb/widgets/GridItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BodyBottomGrid extends StatelessWidget {
  const BodyBottomGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      children: [
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
                  "assets/images/fishing_03.jpg",
              text: "Fishing in the past time"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
              "assets/images/cooking.jpg",
              text: "Let's cook some chicken"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
              "assets/images/gpu.jpg",
              text: "Holding a Nvidia GT 610 GPU - my first proper GPU"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
              "assets/images/hair_02.jpg",
              text: "I like long hair"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
              "assets/images/hair_01.jpg",
              text: "I really, really like long hair"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
              "assets/images/quoter_01.webp",
              text: "Quotes app I built"),
        ),
      ],
    );
  }
  //
}
