import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'GetInTouchDesktop.dart';
import 'GetInTouchMob.dart';

class GetInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: GetInTouchMob(),
      tablet: GetInTouchMob(),
      desktop: GetInTouchDesktop(),
    );
  }
}
