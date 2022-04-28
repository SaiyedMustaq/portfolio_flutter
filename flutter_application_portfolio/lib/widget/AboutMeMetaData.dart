import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/ThemeProvider.dart';

class AboutMeMetaData extends StatelessWidget {
  final String data;
  final String information;
  final Alignment alignment;

  const AboutMeMetaData(
      {Key? key,
      required this.data,
      required this.information,
      required this.alignment})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;

    return Align(
      alignment: alignment,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$data: ",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: height * 0.018,
                color: _themeProvider.lightTheme ? Colors.black : Colors.white,
              ),
            ),
            TextSpan(
              text: " $information\n",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300,
                fontSize: height * 0.018,
                letterSpacing: 1.0,
                color: _themeProvider.lightTheme ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
