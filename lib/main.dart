import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'sections/mainSection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mustaq',
      initialRoute: "/",
      routes: {
        "/": (context) => MainPage(),
      },
    );
  }
}
