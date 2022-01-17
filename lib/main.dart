import 'package:dayaonweb/theme/theme.dart';
import 'package:flutter/material.dart';

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

  void _onSwitchToggle(bool isToggled) {
    setState(() {
      print("Called with value:$isToggled");
      _isDarkModeEnabled = isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: !_isDarkModeEnabled ? lightTheme : darkTheme,
      darkTheme: darkTheme,
      home: MyHomePage(
        title: 'Daya on web',
        isDarkModeEnabled: _isDarkModeEnabled,
        themeChangeCb: _onSwitchToggle,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(
      {Key? key,
      required this.title,
      required this.isDarkModeEnabled,
      required this.themeChangeCb})
      : super(key: key);

  final String title;
  final ValueChanged<bool> themeChangeCb;
  final bool isDarkModeEnabled;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool isOn = false;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        toolbarHeight: 100.0,
        backgroundColor:
            widget.isDarkModeEnabled ? Colors.black12 : Colors.white,
        elevation: 0.0,
        actions: [
          Transform.scale(
            scale: 1.5,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Switch(
                  value: widget.isDarkModeEnabled,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.white,
                  inactiveThumbImage: const NetworkImage(
                      "https://cdn2.iconfinder.com/data/icons/bubble-set-general/48/Sun-512.png"),
                  activeThumbImage: const NetworkImage(
                      "https://cdn2.iconfinder.com/data/icons/canoopi-mobile-contact-apps/32/Dark_Theme-512.png"),
                  onChanged: widget.themeChangeCb),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
