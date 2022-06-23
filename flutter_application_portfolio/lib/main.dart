import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'portfolio1/provider/ThemeProvider.dart';
import 'portfolio1/sections/getInTouch/GetInTouch.dart';
import 'portfolio1/sections/mainSection.dart';
import 'portfolio1/sections/servicesDetails/ServicesDetails.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider _themeProvider = ThemeProvider();

  // void getCurrentAppTheme() async {
  //   _themeProvider.lightTheme = await _themeProvider.darkThemePref.getTheme();
  // }

  @override
  void initState() {
    // getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mustaq',
        theme: ThemeData.light(),
        initialRoute: "/",
        routes: {
          "/": (context) => MainPage(),
          "/workTogether": (context) => GetInTouch(),
          "/details": (context) => const ServiceDetails(
                dec: '',
                title: '',
              )
        },
      ),
    );
  }
}
