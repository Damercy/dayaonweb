import 'package:dayaonweb/models/GridItemModel.dart';
import 'package:dayaonweb/utils/ScreenSize.dart';
import 'package:dayaonweb/widgets/GridItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BodyBottomGrid extends StatelessWidget {
  final List<GridItemModel> gridItems;

  const BodyBottomGrid({Key? key, required this.gridItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 24,
      mainAxisSpacing: 32,
      itemCount: gridItems.length,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: ScreenSize.isLargeScreenDevice(context) ? 3 : 2,
      ),
      itemBuilder: (context, index) {
        GridItemModel item = gridItems[index];
        return GridItem(
            key: Key(index.toString()), image: item.image, text: item.text);
      },
    );
  }
}
