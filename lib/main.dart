import 'package:dayaonweb/theme/theme.dart';
import 'package:flutter/material.dart';
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
      title: 'Flutter Demo',
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
  MyHomePage(
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
      drawer: const Drawer(),
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1463595775477256193/suTiiJ3b_400x400.jpg"),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 30, 0)),
            Text(
              widget.title,
              style: GoogleFonts.rubik(fontWeight: FontWeight.w400),
            )
          ],
        ),
        backgroundColor: Colors.green,
        titleSpacing: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: widget.themeChangeCb,
            icon: Icon(
                widget.isDarkModeEnabled ? Icons.light_mode : Icons.dark_mode),
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
