import 'package:flutter/material.dart';
import '/app_string.dart';
import '/constanat.dart';
import '/sections/skillsTile.dart';

import '../../utils.dart';

class MySkills extends StatelessWidget {
  const MySkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(firstbackground),
        fit: BoxFit.fill,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            AppString.skills,
            style: TextStyle(fontSize: 35.0),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal:
                  Utils.isMobile(context) ? 10 : Utils.mdqw(context) / 8,
            ),
            child: Wrap(
              children:
                  language.map((e) => SkillCard(url: e.toString())).toList(),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
