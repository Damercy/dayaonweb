import 'package:dayaonweb/models/GridItemModel.dart';
import 'package:dayaonweb/utils/ScreenSize.dart';
import 'package:dayaonweb/widgets/GridItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BodyBottomGrid extends StatelessWidget {
  BodyBottomGrid({Key? key}) : super(key: key);
  final List<GridItemModel> gridItems = [
    GridItemModel(
        "📱 Minimalist quotes app side project", "assets/images/quoter.webp"),
    GridItemModel(
        "🎣 Fishing in the past time", "assets/images/fishing_03.jpg"),
    GridItemModel("🍳 Let's cook some chicken", "assets/images/cooking.jpg"),
    GridItemModel("🔢 Built a customizable keyboard library",
        "assets/images/slash_keyboard.gif"),
    GridItemModel("💇 I like long hair", "assets/images/hair_02.jpg"),
    GridItemModel("🖥️ Holding a Nvidia GT 610 - my first proper GPU",
        "assets/images/gpu.jpg"),
    GridItemModel("🏖️ Maybe I'm a beach person?", "assets/images/beach.jpg"),
    GridItemModel("📱 LYT app @microfinance.ai", "assets/images/lyt.webp"),
    GridItemModel("🛖 A makeshift traditional hut where date sap is made",
        "assets/images/dates.jpg"),
    GridItemModel(
        "🐶 I've a Polo, tumhare paas kya hai?", "assets/images/polo.jpg"),
    GridItemModel(
        "🕹️ Love gaming! Gamer tag - Damercy", "assets/images/rig.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: ScreenSize.isLargeScreenDevice(context) ? 3 : 2,
      crossAxisSpacing: 24,
      mainAxisSpacing: 32,
      itemCount: gridItems.length,
      itemBuilder: (context, index) {
        GridItemModel item = gridItems[index];
        return GridItem(imageUrl: item.image, text: item.text);
      },
    );
  }
}
