import 'package:flutter/material.dart';
import 'package:flutter_application_portfolio/provider/ThemeProvider.dart';
import 'package:flutter_application_portfolio/sections/MainSection.dart';
import 'package:flutter_application_portfolio/sections/getInTouch/GetInTouch.dart';
import 'package:flutter_application_portfolio/sections/servicesDetails/ServicesDetails.dart';
import 'package:provider/provider.dart';

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
        title: 'Hamza',
        //theme: ThemeStyles.themeData(_themeProvider.lightTheme, context),
        initialRoute: "/",
        routes: {
          "/": (context) => MainPage(),
          "/workTogether": (context) => GetInTouch(),
          "/details": (context) => ServiceDetails(
                dec: '',
                title: '',
              )
        },
      ),
    );
  }
}
