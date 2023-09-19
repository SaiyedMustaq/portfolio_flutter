import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'projectsModel.dart';

// Colors
const Color kPrimaryColor = Color(0xffC0392B);

const userImageWeb = "assets/images/web.jpg";
const userImageMobile = "assets/images/mob.png";
const iconZamy = "assets/images/Zamy.png";
const iconZamyPrtner = "assets/images/Zamy.png";
const iconZamyDelivery = "assets/images/Zamy.png";
const iconSynergy = "assets/images/synergy.png";
const iconSynergyOrdering = "assets/images/synergy.png";
const iconYourLawDirect = "assets/images/yourlawdirect.png";
const iconLiftForce = "assets/images/liftforce.png";
const iconSprintHit = "assets/images/sprinthit.png";
const iconHopMeal = "assets/images/hopgrocery.png";
const iconHopGrocery = "assets/images/hopgrocery.png";
const iconIce2Hot = "assets/images/ice2hot.png";
const iconPlaceHolder = "assets/images/48048.png";
const iconMustaqAhmed = "assets/images/MustaqAhmed.png";
const firstbackground = "assets/images/firstbackground.jpg";
const secondbackground = "assets/images/secondbackground.jpg";
const thirdbackground = "assets/images/thirdbackground.jpg";

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Tools & Tech
final kTools = ["Flutter", "Dart", "Java", "Kotlin", "Firebase"];
final projectsList = [
  ProjectsModel(
      "HOP Grocery",
      "https://play.google.com/store/apps/details?id=com.hopgrocery.attuneinfocom&hl=en-IN",
      iconHopGrocery,
      "Hop Grocery is an online grocery store where you can shop easily based on most popular categories. The categories includes Fruits & Vegetables, Foodgrains, Oils & Masalas, Beverages, Snacks.We also provide our aspiring customers with Non-Veg items like Egg, Meat and Fish. On-Time delivery of Complete fresh and pure items is the primary aim for our store."),
  ProjectsModel(
      "Zamy",
      "https://play.google.com/store/apps/details?id=com.attune.zamy&hl=en-IN",
      iconZamy,
      ""),
  ProjectsModel(
      "Synergy Up",
      "https://play.google.com/store/apps/details?id=com.abs.synergy",
      iconSynergy,
      "Companion App to all of Synergy Bookkeeping & Stocktaking’s services in Ireland"),
  ProjectsModel(
      "Lift-Force",
      "https://play.google.com/store/apps/details?id=com.lift_force_app",
      iconLiftForce,
      "Lift-Force Discover a convenient and consistent way to provide quotes for Lift Installation Sub-Contract work. Your quoted price is supported by your hard-earned experience, your site safety record, and the quality of your previous work.Impress prospective lift company employers by providing concise clear and consistent estimates and proposals"),
  ProjectsModel(
      "Your Law Direct",
      "https://play.google.com/store/apps/details?id=com.law_app",
      iconYourLawDirect,
      "This Application for Your Law Direct will provide you with a convenient way of gaining access to a highly experienced solicitor quickly, for a fixed fee at a time that’s convenient to you.This application has been developed so you can download it to your mobile telephone (IOS and Android). The App will allow you to book a 45-minute consultation with one of our highly experienced solicitors highlighted in the www.yourlawdirect.com website, at a time and date that’s convenient to you or your business."),
  ProjectsModel(
      "S,printHit",
      "https://play.google.com/store/apps/details?id=com.sprinthit",
      iconSprintHit,
      "Expertly devised, interval sprint training programs, fully integrated into this innovative easy to use app.SprintHit will guide you through Warm Up, Drills and Sprints followed by Weights Sessions that specifically target muscles used in sprinting."),
  ProjectsModel(
      "ICE2HOT",
      "https://play.google.com/store/apps/details?id=com.icebreakrr.classic",
      iconIce2Hot,
      "We know your time is valuable so this is. The app built for genuine connections. 1) Match with local people you like. 2) You both have 7 days to connect your call and 3 minutes to get your first impression. 3) Did they break the ice? Great! add each other to your crushes list where you can both call again when it suits with no time constraints."),
  ProjectsModel(
      "AQARAT",
      "https://play.google.com/store/apps/details?id=com.icebreakrr.classic",
      "assets/images/aqarat_logo.png",
      ""),
  ProjectsModel(
      "Eruit",
      "https://play.google.com/store/apps/details?id=com.icebreakrr.classic",
      "assets/images/eruit_logo.png",
      ""),
  ProjectsModel(
      "IWA2023",
      "https://play.google.com/store/apps/details?id=com.icebreakrr.classic",
      "assets/images/iwa_icon.png",
      ""),
];

final language = [
  "assets/images/javaLang.jpeg",
  "assets/images/kotlinLang.png",
  "assets/images/dartLang.png",
  "assets/images/flutter.jpeg",
  "assets/images/firebase.png",
  "assets/images/git.png",
];
