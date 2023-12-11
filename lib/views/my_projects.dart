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
        mobile: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.min,
            children: [
              buildMyService(),
              const SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isSalat = value;
                  });
                },
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isSalat = value;
                    });
                  },
                  child: buildAnimateContainer(
                    title: 'Salat',
                    asset: AppAsset.coding,
                    hover: isSalat,
                    description:
                        'The Salat app shows the timetable of the salat based on their location, forbidden times of prayers. It also navigates the Qibla location. '
                        'The next feature of this app is Surah, Hadith and Mosques. There is also an Arabic Calendar',
                    buttonName: 'Read More',
                    link:
                        'https://github.com/Mainul2723/SALAT-Android-Studio-JAVA',
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isQuiz = value;
                  });
                },
                child: buildAnimateContainer(
                  title: 'Quiz App',
                  asset: AppAsset.brush,
                  hover: isQuiz,
                  description:
                      'Quiz App is a flutter project Enhanced UI and Result scrren shows the user input and the right ans',
                  buttonName: 'Read More',
                  link: 'https://github.com/Mainul2723/QuizApp',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isRoll = value;
                  });
                },
                child: buildAnimateContainer(
                  title: 'Roll Dice',
                  asset: AppAsset.analytics,
                  hover: isRoll,
                  description:
                      'It\'s a simple Roll Dice App created with flutter framewrok',
                  buttonName: 'Read More',
                  link: 'https://github.com/Mainul2723/Flutter_RollerDice',
                ),
              ),
            ],
          ),
        ),
        tablet: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: [
              buildMyService(),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isSalat = value;
                      });
                    },
                    child: InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isSalat = value;
                        });
                      },
                      child: buildAnimateContainer(
                        title: 'Salat',
                        asset: AppAsset.coding,
                        hover: isSalat,
                        description:
                            'The Salat app shows the timetable of the salat based on their location, forbidden times of prayers. It also navigates the Qibla location. '
                            'The next feature of this app is Surah, Hadith and Mosques. There is also an Arabic Calendar',
                        buttonName: 'Read More',
                        link:
                            'https://github.com/Mainul2723/SALAT-Android-Studio-JAVA',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isQuiz = value;
                      });
                    },
                    child: buildAnimateContainer(
                      title: 'Quiz App',
                      asset: AppAsset.brush,
                      hover: isQuiz,
                      description:
                          'Quiz App is a flutter project Enhanced UI and Result scrren shows the user input and the right ans',
                      buttonName: 'Read More',
                      link: 'https://github.com/Mainul2723/QuizApp',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isRoll = value;
                  });
                },
                child: buildAnimateContainer(
                  title: 'Roll Dice',
                  asset: AppAsset.analytics,
                  hover: isRoll,
                  description:
                      'It\'s a simple Roll Dice App created with flutter framewrok',
                  buttonName: 'Read More',
                  link: 'https://github.com/Mainul2723/Flutter_RollerDice',
                ),
              ),
            ],
          ),
        ),
        desktop: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildMyService(),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isSalat = value;
                    });
                  },
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isSalat = value;
                      });
                    },
                    child: buildAnimateContainer(
                      title: 'Salat',
                      asset: AppAsset.coding,
                      hover: isSalat,
                      description:
                          'The Salat app shows the timetable of the salat based on their location, forbidden times of prayers. It also navigates the Qibla location. '
                          'The next feature of this app is Surah, Hadith and Mosques. There is also an Arabic Calendar',
                      buttonName: 'Read More',
                      link:
                          'https://github.com/Mainul2723/SALAT-Android-Studio-JAVA',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isQuiz = value;
                    });
                  },
                  child: buildAnimateContainer(
                    title: 'Quiz App',
                    asset: AppAsset.brush,
                    hover: isQuiz,
                    description:
                        'Quiz App is a flutter project Enhanced UI and Result scrren shows the user input and the right ans',
                    buttonName: 'Read More',
                    link: 'https://github.com/Mainul2723/QuizApp',
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isRoll = value;
                    });
                  },
                  child: buildAnimateContainer(
                    title: 'Roll Dice',
                    asset: AppAsset.analytics,
                    hover: isRoll,
                    description:
                        'It\'s a simple Roll Dice App created with flutter framewrok',
                    buttonName: 'Read More',
                    link: 'https://github.com/Mainul2723/Flutter_RollerDice',
                  ),
                ),
              ],
            ),
          ],
        ),
        bgColor: AppColors.bgColor,
        paddingWidth: size.width * 0.04,
      ),
    );
  }

  FadeInDown buildMyService() {
    return FadeInDown(
      child: RichText(
        text: TextSpan(
          text: 'My',
          style: AppTextStyles.headingTextStyle(fontSize: 30),
          children: [
            TextSpan(
              text: 'Projects',
              style: AppTextStyles.headingTextStyle(
                fontSize: 30,
                color: AppColors.robinEdgeBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimateContainer({
    required String title,
    required String asset,
    required bool hover,
    String description = '',
    String buttonName = '',
    double width = 350,
    double hoverWidth = 360,
    String link = '',
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: hover ? hoverWidth : width,
      height: hover ? 390 : 380,
      transform: hover ? isHoverActive : isHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: AppTextStyles.monStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            description,
            style: AppTextStyles.normalStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          AppButton.buildMaterialButton(
            onTap: () {
              launch(link);
            },
            buttonName: buttonName,
          ),
        ],
      ),
    );
  }
}
