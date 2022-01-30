import 'package:dayaonweb/widgets/GridItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BodyBottomGrid extends StatelessWidget {
  const BodyBottomGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 3,
      children: [
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
                  "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg",
              text: "Learning how to sail"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
              "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg",
              text: "Learning how to sail"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
              "https://yasmineevjen.com/wp-content/uploads/2021/01/PXL_20201219_220314155.MP_2-768x1024.jpg",
              text: "Learning how to sail"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
              "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg",
              text: "Learning how to sail"),
        ),
        StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: GridItem(
              imageUrl:
              "https://yasmineevjen.com/wp-content/uploads/2021/11/surfskate2-3.gif",
              text: "Learning how to sail"),
        ),
      ],
    );
  }
  //
}
