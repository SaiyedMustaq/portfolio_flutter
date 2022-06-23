import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/ThemeProvider.dart';

final List<String> _sectionsName = [
  "HOME",
  "ABOUT",
  "SERVICES",
  "PROJECTS",
  "CONTACT"
];

class NavBarLogo extends StatelessWidget {
  final double height;
  ValueNotifier<bool> isHover = ValueNotifier(false);
  NavBarLogo({required this.height});
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(onPressed: () {}, child: Text(_sectionsName[0])),
          TextButton(onPressed: () {}, child: Text(_sectionsName[1])),
          TextButton(onPressed: () {}, child: Text(_sectionsName[2])),
          TextButton(onPressed: () {}, child: Text(_sectionsName[3])),
          TextButton(onPressed: () {}, child: Text(_sectionsName[4])),
          SizedBox(width: 20),
          InkWell(
            hoverColor: Colors.red,
            onHover: (value) {
              if (value) {
                isHover.value = true;
              } else {
                isHover.value = false;
              }
            },
            child: ValueListenableBuilder<bool>(
              valueListenable: isHover,
              builder: (context, value, child) => Container(
                decoration: BoxDecoration(
                    border: value
                        ? Border.all(color: Colors.red)
                        : Border.all(color: Colors.amber)),
                child: Text(
                  "Mustaq",
                  style: TextStyle(
                    fontFamily: "Agustina",
                    fontSize: 35.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
