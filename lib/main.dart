import 'package:auto_size_text/auto_size_text.dart';
import 'package:dayaonweb/sections/body_bottom_grid.dart';
import 'package:dayaonweb/sections/body_top.dart';
import 'package:dayaonweb/sections/drawer_column.dart';
import 'package:dayaonweb/theme/theme.dart';
import 'package:dayaonweb/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/grid_item_model.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  bool _isDarkModeEnabled = false;

  void _onSwitchToggle() {
    setState(() {
      _isDarkModeEnabled = !_isDarkModeEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dayamoy Adhikari - Android engineer',
      debugShowCheckedModeBanner: false,
      theme: !_isDarkModeEnabled ? lightTheme : darkTheme,
      home: MyHomePage(
        title: 'Dayamoy Adhikari',
        isDarkModeEnabled: _isDarkModeEnabled,
        themeChangeCb: _onSwitchToggle,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {Key? key,
      required this.title,
      required this.isDarkModeEnabled,
      required this.themeChangeCb})
      : super(key: key);

  final String title;
  final VoidCallback themeChangeCb;
  final bool isDarkModeEnabled;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final List<GridItemModel> _gridItems;

  @override
  void initState() {
    super.initState();
    _gridItems = [
      GridItemModel("📱 Minimalist quotes app side project",
          Image.asset("assets/images/quoter.webp")),
      GridItemModel("🎣 Fishing in the past time",
          Image.asset("assets/images/fishing_03.webp")),
      GridItemModel("🍳 Let's cook some chicken",
          Image.asset("assets/images/cooking.webp")),
      GridItemModel("🔢 Built a customizable keyboard library",
          Image.asset("assets/images/slash_keyboard.webp")),
      GridItemModel(
          "💇 I like long hair", Image.asset("assets/images/hair_02.webp")),
      GridItemModel("🖥️ Holding a Nvidia GT 610 - my first proper GPU",
          Image.asset("assets/images/gpu.webp")),
      GridItemModel("🏖️ Maybe I'm a beach person?",
          Image.asset("assets/images/beach.webp")),
      GridItemModel(
          "📱 LYT app @microfinance.ai", Image.asset("assets/images/lyt.webp")),
      GridItemModel("🛖 A makeshift traditional hut where date sap is made",
          Image.asset("assets/images/dates.webp")),
      GridItemModel("🐶 I've a Polo, tumhare paas kya hai?",
          Image.asset("assets/images/polo.webp")),
      GridItemModel("🕹️ Love gaming! Gamer tag - Damercy",
          Image.asset("assets/images/rig.webp")),
    ];
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _gridItems.map((gridItem) => precacheImage(gridItem.image.image, context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerColumn(),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(
              width: ScreenSize.determineWidth(context),
            ),
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  splashRadius: 20.0,
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(
                    0, 0, ScreenSize.isLargeScreenDevice(context) ? 16 : 0, 0)),
            Image.asset(
              "assets/images/dp.webp",
              width: 32.0,
              height: 32.0,
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 16, 0)),
            AutoSizeText(widget.title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w500))
          ],
        ),
        titleSpacing: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            splashRadius: 20.0,
            onPressed: widget.themeChangeCb,
            icon: Icon(
                widget.isDarkModeEnabled ? Icons.light_mode : Icons.dark_mode),
          ),
          SizedBox(
            width: ScreenSize.determineWidth(context),
          )
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                  height: (MediaQuery.of(context).size.height -
                          kToolbarHeight -
                          400) /
                      3),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    !ScreenSize.isLargeScreenDevice(context)
                        ? 32
                        : ScreenSize.determineWidth(context),
                    0,
                    !ScreenSize.isLargeScreenDevice(context)
                        ? 32
                        : ScreenSize.determineWidth(context),
                    0),
                child: const BodyTop(
                  key: null,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      !ScreenSize.isLargeScreenDevice(context)
                          ? 32
                          : ScreenSize.determineWidth(context),
                      0,
                      !ScreenSize.isLargeScreenDevice(context)
                          ? 32
                          : ScreenSize.determineWidth(context),
                      0),
                  child: Container(
                    height: ScreenSize.isLargeScreenDevice(context)
                        ? MediaQuery.of(context).size.height + 1200
                        : MediaQuery.of(context).size.height + 950,
                    margin: EdgeInsets.fromLTRB(0,
                        (MediaQuery.of(context).size.height - 350) / 3, 0, 0),
                    child: BodyBottomGrid(
                      gridItems: _gridItems,
                    ),
                  )),
              Center(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: TextButton.icon(
                          icon: const Icon(Icons.flutter_dash),
                          style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 48.0, vertical: 24.0),
                              splashFactory: InkSplash.splashFactory),
                          onPressed: () async {
                            await launch(
                                "https://github.com/Damercy/dayaonweb");
                          },
                          label: const Text(
                            "Made with Flutter",
                          )))),
            ],
          ),
        ),
      ]),
    );
  }
}
