// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../app_string.dart';
import '../constanat.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({Key? key, required this.scrollController});
  ScrollController scrollController = ScrollController();
  int scrollDur = 800;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
              text: AppString.about,
              onTap: () {
                Navigator.pop(context);
                scrollController.animateTo(
                  100,
                  duration: Duration(milliseconds: scrollDur),
                  curve: Curves.easeIn,
                );
              }),
          createDrawerBodyItem(
              text: AppString.skills,
              onTap: () {
                Navigator.pop(context);
                scrollController.animateTo(
                  600,
                  duration: Duration(milliseconds: scrollDur),
                  curve: Curves.easeIn,
                );
              }),
          createDrawerBodyItem(
              text: AppString.projects,
              onTap: () {
                Navigator.pop(context);
                scrollController.animateTo(
                  1100,
                  duration: Duration(milliseconds: scrollDur),
                  curve: Curves.easeIn,
                );
              }),
          createDrawerBodyItem(
              text: AppString.getInTouch,
              onTap: () {
                Navigator.pop(context);
                scrollController.animateTo(
                  1600,
                  duration: Duration(milliseconds: scrollDur),
                  curve: Curves.easeIn,
                );
              }),
        ],
      ),
    );
  }
}

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight, image: AssetImage(userImageWeb))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("MustaqAhmed Saiyed",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget createDrawerBodyItem(
    {required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Text(text),
    ),
    onTap: onTap,
  );
}
