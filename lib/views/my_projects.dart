// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animate_do/animate_do.dart';
// ignore: unused_import
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_button.dart';
import 'package:my_portfolio/globals/app_color.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:my_portfolio/widget/desktop.dart';
import 'package:my_portfolio/widget/mobile.dart';
import 'package:my_portfolio/widget/tablet.dart';
import 'package:url_launcher/url_launcher.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isSalat = false, isQuiz = false, isRoll = false;
  final isHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final isHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Helper(
        mobile: MobileContent(size, isSalat, isQuiz, isRoll),
        tablet: TabletContent(size, isSalat, isQuiz, isRoll),
        desktop: DesktopContent(size, isSalat, isQuiz, isRoll),
        bgColor: AppColors.bgColor,
        paddingWidth: size.width * 0.04,
      ),
    );
  }
}
