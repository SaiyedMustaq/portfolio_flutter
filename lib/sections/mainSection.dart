// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../app_string.dart';
import '../constanat.dart';
import '../utils.dart';
import 'HeaderAction.dart';
import 'about_me.dart';
import 'contact.dart';
import 'drawerPage.dart';
import 'navBar/mySkills.dart';
import 'navBar/projects.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool isPressed = false;
  bool _isScrollingDown = false;
  bool isHover = false;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollingDown) {
          _isScrollingDown = true;
          setState(() {});
        }
      }

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isScrollingDown) {
          _isScrollingDown = false;
          setState(() {});
        }
      }
    });

    _animationController = AnimationController(
        duration: const Duration(milliseconds: 700), vsync: this);
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(() {});
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = Utils.isMobile(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: isMobile
            ? null
            : const Text(
                AppString.useName,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: [
          Utils.isMobile(context)
              ? const SizedBox()
              : HeaderActions(sc: _scrollController),
        ],
      ),
      drawer: isMobile
          ? DrawerPage(
              scrollController: _scrollController,
            )
          : null,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: const Column(
                children: [
                  MoreAboutMe(),
                  SizedBox(height: 100),
                  MySkills(),
                  SizedBox(height: 100),
                  ProjectsPages(),
                  SizedBox(height: 100),
                  Contact()
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaIcon(iconUrl: kSocialIcons[0]),
                  SocialMediaIcon(iconUrl: kSocialIcons[1]),
                  SocialMediaIcon(iconUrl: kSocialIcons[2]),
                  SocialMediaIcon(iconUrl: kSocialIcons[3]),
                  SocialMediaIcon(iconUrl: kSocialIcons[4]),
                  SocialMediaIcon(iconUrl: kSocialIcons[5]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  SocialMediaIcon({Key? key, required this.iconUrl});
  String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        child: Image.network(
          iconUrl,
          height: 30.0,
        ),
      ),
    );
  }
}
