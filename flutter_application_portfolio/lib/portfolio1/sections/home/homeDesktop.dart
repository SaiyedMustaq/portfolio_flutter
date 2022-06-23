import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../animation/bottomAnimation.dart';
import '../../constanat.dart';
import '../../provider/ThemeProvider.dart';
import '../../widget/AdaptiveText.dart';
import '../../widget/CustomSectionHeading.dart';
import '../../widget/OutlinedCustomBtn.dart';
import '../../widget/serviceCard.dart';
import '../servicesDetails/ServicesDetails.dart';

class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    const projectColorList = [
      Color(0xffb20537),
      Color.fromRGBO(0, 96, 91, 1.0),
      Color.fromRGBO(255, 107, 61, 1.0),
      Color.fromRGBO(0, 97, 170, 1),
      Color(0xff0072ff)
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nWhat I Do"),
          const CustomSectionSubHeading(
              text: "I may not be perfect, but I'm surely of some help :)\n\n"),
          const CustomSectionHeading(text: "Language \n\n"),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: WidgetAnimator(
                      child: ServiceCard(
                        projectColor: projectColorList[index],
                        cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                        cardHeight:
                            width < 1200 ? height * 0.37 : height * 0.35,
                        serviceIcon: kLanguageIcons[index],
                        serviceTitle: kServicesTitles[index],
                        serviceDescription: kServicesDescriptions[index],
                        serviceLink: kServicesLinks[index],
                        cardBack: ServiceCardBackWidget(
                            serviceTitle: kServicesTitles[index],
                            serviceDesc: kServicesDescriptions[index],
                            themeProvider: _themeProvider,
                            height: height,
                            width: width),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int index = 3; index < kLanguageIcons.length; index++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: WidgetAnimator(
                        child: ServiceCard(
                          projectColor: projectColorList[index],
                          cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                          cardHeight:
                              width < 1200 ? height * 0.37 : height * 0.35,
                          serviceIcon: _themeProvider.lightTheme && index == 4
                              ? "assets/services/open_b.png"
                              : kLanguageIcons[index],
                          serviceTitle: kServicesTitles[index],
                          serviceDescription: kServicesDescriptions[index],
                          serviceLink: kServicesLinks[index],
                          cardBack: ServiceCardBackWidget(
                            serviceDesc: kServicesDescriptions[index],
                            serviceTitle: kServicesTitles[index],
                            themeProvider: _themeProvider,
                            height: height,
                            width: width,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ServiceCardBackWidget extends StatelessWidget {
  const ServiceCardBackWidget(
      {Key? key,
      required ThemeProvider themeProvider,
      required this.height,
      required this.width,
      required this.serviceDesc,
      required this.serviceTitle})
      : _themeProvider = themeProvider,
        super(key: key);

  final ThemeProvider _themeProvider;
  final double height;
  final double width;
  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AdaptiveText(
          serviceDesc,
          style: GoogleFonts.montserrat(
            color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            fontSize: height * 0.015,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w400,
            height: width < 900 ? 1.5 : 1.8,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 25.0),
        MaterialButton(
          hoverColor: kPrimaryColor.withAlpha(150),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: const BorderSide(color: kPrimaryColor)),
          onPressed: () {
            serviceTitle == kServicesTitles[3]
                ? launchURL(kServicesLinks[3])
                : serviceTitle == kServicesTitles[4]
                    ? launchURL(kServicesLinks[4])
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ServiceDetails(
                            title: serviceTitle,
                            dec: serviceDesc,
                          ),
                        ),
                      );
          },
          child: Text(
            "Details",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w300,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: 250.0,
          height: 0.5,
          color:
              _themeProvider.lightTheme ? Colors.grey[400] : Colors.grey[100],
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 40.0,
          width: 150.0,
          child: MaterialButton(
            color: kPrimaryColor,
            onPressed: () => showDialog(
                context: context,
                builder: (contecxt) => AlertDialog(
                      backgroundColor: _themeProvider.lightTheme
                          ? Colors.white
                          : Colors.grey[900],
                      title: AdaptiveText(
                        "Hire Me!",
                        style: TextStyle(
                            fontSize: 32.0,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white),
                        textAlign: TextAlign.start,
                      ),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Back"))
                      ],
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFilledBtn(
                            height: 40.0,
                            onPressed: () => launchURL(""),
                            btnColor: const Color(0xff34CB62),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(FontAwesomeIcons.whatsapp),
                                SizedBox(width: 8.0),
                                Text("WhatsApp"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          CustomFilledBtn(
                            height: 40.0,
                            onPressed: () => launchURL(
                                "https://www.upwork.com/freelancers/~0197b0f6aaeba9675f"),
                            btnColor: const Color(0xff13A800),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.network(
                                  "https://img.icons8.com/ios-filled/50/000000/upwork.png",
                                  height: 35.0,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 8.0),
                                const Text("Upwork"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
            child: const Text(
              "HIRE ME!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ),
        )
      ],
    );
  }
}

/*Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () => launchURL(kServicesLinks[0]),
                                child: Image.asset(
                                  'assets/services/fiverr.png',
                                  height: 25.0,
                                  color: _themeProvider.lightTheme
                                      ? Colors.black
                                      : Colors.green,
                                ),
                              ),
                              const SizedBox(width: 30.0),
                              InkWell(
                                onTap: () => launchURL(
                                    "https://www.upwork.com/freelancers/~0197b0f6aaeba9675f"),
                                child: Image.network(
                                  "https://img.icons8.com/ios-filled/50/000000/upwork.png",
                                  height: 33.0,
                                  color: _themeProvider.lightTheme
                                      ? Colors.black
                                      : Colors.green,
                                ),
                              ),
                            ],
                          )*/