import 'package:dayaonweb/models/GridItemModel.dart';
import 'package:dayaonweb/utils/ScreenSize.dart';
import 'package:dayaonweb/widgets/GridItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BodyBottomGrid extends StatefulWidget {
  final List<GridItemModel> gridItems;

  const BodyBottomGrid({Key? key, required this.gridItems}) : super(key: key);

  @override
  _BodyBottomGridState createState() => _BodyBottomGridState();
}



class _BodyBottomGridState extends State<BodyBottomGrid> {

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      crossAxisSpacing: 24,
      mainAxisSpacing: 32,
      itemCount: widget.gridItems.length,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: ScreenSize.isLargeScreenDevice(context) ? 3 : 2,
      ),
      itemBuilder: (context, index) {
        GridItemModel item = widget.gridItems[index];
        return GridItem(
            key: Key(index.toString()), image: item.image, text: item.text);
      },
    );
  }
}
