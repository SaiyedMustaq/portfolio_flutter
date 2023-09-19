import 'package:flutter/material.dart';

import '../../app_string.dart';
import '../../constanat.dart';
import '../../utils.dart';
import 'projectsTile.dart';

class ProjectsPages extends StatelessWidget {
  const ProjectsPages({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(secondbackground),
        fit: BoxFit.fill,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0),
          const Text(
            AppString.projects,
            style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal:
                  Utils.isMobile(context) ? 10 : Utils.mdqw(context) / 8,
            ),
            child: Wrap(
                spacing: 2.0,
                children: projectsList
                    .map((e) => ProjectsTiles(
                        projectImage: userImageMobile, projectsModel: e))
                    .toList()),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
