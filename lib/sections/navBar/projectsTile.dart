// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '/constanat.dart';
import '../../projectsModel.dart';

class ProjectsTiles extends StatelessWidget {
  ProjectsTiles(
      {Key? key, required this.projectImage, required this.projectsModel});

  String projectImage;
  ProjectsModel projectsModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const SizedBox(height: 5.0),
          //Text(projectsModel.name),
          const Text("Project Name"),
          const SizedBox(height: 5.0),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                iconPlaceHolder,
                height: 100,
                width: 100,
              )),
          // Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: projectsModel.appIcon.isNotEmpty
          //         ? Image.asset(projectsModel.appIcon, height: 150, width: 100)
          //         : Image.network(
          //             iconPlaceHolder,
          //             height: 100,
          //             width: 100,
          //           )),
          //Text(projectsModel.desc),
          const SizedBox(height: 5.0),
          TextButton(onPressed: () {}, child: const Text("CheckOut")),
          const SizedBox(height: 5.0)
        ],
      ),
    );
  }
}
