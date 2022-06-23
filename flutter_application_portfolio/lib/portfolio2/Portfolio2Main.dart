import 'package:flutter/material.dart';

import '../portfolio1/sections/navBar/navBarLogo.dart';

class Portfolio2 extends StatefulWidget {
  const Portfolio2({Key? key}) : super(key: key);

  @override
  _Portfolio2State createState() => _Portfolio2State();
}

class _Portfolio2State extends State<Portfolio2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 10,
        backgroundColor: Colors.white,
        actions: [
          NavBarLogo(height: 45.0),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05)
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
