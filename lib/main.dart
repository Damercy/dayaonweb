import 'package:dayaonweb/sections/BodyBottomGrid.dart';
import 'package:dayaonweb/sections/BodyTop.dart';
import 'package:dayaonweb/theme/theme.dart';
import 'package:dayaonweb/utils/ScreenSize.dart';
import 'package:dayaonweb/widgets/GridItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

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
      title: 'Dayamoy Adhikari - Android developer',
      debugShowCheckedModeBanner: false,
      theme: !_isDarkModeEnabled ? lightTheme : darkTheme,
      darkTheme: darkTheme,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
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
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 16, 0)),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg"),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 16, 0)),
            Text(
              widget.title,
              style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w400, color: Colors.white),
            )
          ],
        ),
        backgroundColor: Colors.green,
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
                padding: EdgeInsets.fromLTRB(ScreenSize.determineWidth(context),
                    0, ScreenSize.determineWidth(context), 0),
                child: const BodyTop(
                  key: null,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      ScreenSize.determineWidth(context),
                      0,
                      ScreenSize.determineWidth(context),
                      0),
                  child: Container(
                    height: ScreenSize.isLargeScreenDevice(context)
                        ? MediaQuery.of(context).size.height + 1200
                        : MediaQuery.of(context).size.height + 800,
                    margin: EdgeInsets.fromLTRB(0,
                        (MediaQuery.of(context).size.height - 350) / 3, 0, 0),
                    child: const BodyBottomGrid(),
                  )),
              SizedBox(
                height:
                    (MediaQuery.of(context).size.height - kToolbarHeight - 30) /
                        3,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
