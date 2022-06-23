import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../constanat.dart';
import '../../provider/ThemeProvider.dart';
import '../../widget/CustomSectionHeading.dart';
import '../../widget/serviceCard.dart';
import '../services/servicesDesktop.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nWhat I Do"),
        const CustomSectionSubHeading(
            text: "I may not be perfect, but I'm surely of some help :)\n\n"),
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ServiceCard(
              projectColor: Color(0xffb20537),
              cardWidth: width < 650 ? width * 0.8 : width * 0.5,
              serviceIcon: kServicesIcons[i],
              serviceTitle: kServicesTitles[i],
              serviceDescription: kServicesDescriptions[i],
              serviceLink: kServicesLinks[i],
              cardBack: ServiceCardBackWidget(
                serviceTitle: kServicesTitles[i],
                serviceDesc: kServicesDescriptions[i],
                themeProvider: _themeProvider,
                height: height,
                width: width,
              ),
              cardHeight: 350,
            ),
          ),
          options: CarouselOptions(
              height: width < 450 ? height * 0.4 : height * 0.4,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false),
        )
      ],
    );
  }
}
