import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_button.dart';
import 'package:my_portfolio/globals/app_color.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/views/my_projects.dart';
import 'package:animate_do/animate_do.dart';
import 'package:url_launcher/url_launcher.dart';

final isHoverActive = Matrix4.identity()..translate(0, -10, 0);
final isHoverRemove = Matrix4.identity()..translate(0, 0, 0);

class DesktopContent extends StatefulWidget {
  final Size size;
  final bool isShopaholic,
      isTutorsPlan,
      isEquiz,
      isElearning,
      isBlog,
      isExpenseTracker,
      isQuiz,
      isEduTechMaster,
      isHadith,
      isWoWfood,
      isSalat;

  const DesktopContent(
      this.size,
      this.isBlog,
      this.isShopaholic,
      this.isTutorsPlan,
      this.isEquiz,
      this.isElearning,
      this.isExpenseTracker,
      this.isQuiz,
      this.isEduTechMaster,
      this.isHadith,
      this.isWoWfood,
      this.isSalat,
      {super.key});

  @override
  State<DesktopContent> createState() => _DesktopContentState();
}

class _DesktopContentState extends State<DesktopContent> {
  bool isShopaholic = false,
      isTutorsPlan = false,
      isEquiz = false,
      isElearning = false,
      isBlog = false,isExpenseTracker = false,
      isQuiz = false,
      isEduTechMaster = false,
      isHadith = false,
      isWoWfood = false,
      isSalat = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyService(),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isEquiz = value;
                  });
                },
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isEquiz = value;
                    });
                  },
                  child: buildAnimateContainer(
                    title: 'Equiz',
                    asset: AppAsset.coding,
                    hover: widget.isEquiz,
                    description:
                    'Expense Tracker App can track all our day-to-day expenses'
                        'Features: Dard Mode theme, Pie Chart, Chart Bar, Catagorize Expenses',
                    buttonName: 'Read More',
                    link: 'https://github.com/Mainul2723/ExpenseTracker',
                  ),
                ),
              ), //Equiz
              const SizedBox(height: 24),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isElearning = value;
                  });
                },
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isElearning = value;
                    });
                  },
                  child: buildAnimateContainer(
                    title: 'Elearning',
                    asset: AppAsset.coding,
                    hover: widget.isElearning,
                    description:
                    'Expense Tracker App can track all our day-to-day expenses'
                        'Features: Dard Mode theme, Pie Chart, Chart Bar, Catagorize Expenses',
                    buttonName: 'Read More',
                    link: 'https://github.com/Mainul2723/ExpenseTracker',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isBlog = value;
                  });
                },
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isBlog = value;
                    });
                  },
                  child: buildAnimateContainer(
                    title: 'Blog App',
                    asset: AppAsset.coding,
                    hover: widget.isBlog,
                    description:
                    'The Flutter Blog App is a mobile application that enables users to read, create, update, and delete blog posts. The app includes features such as user authentication, a blog post list, and detailed views for reading and managing blog posts. State management is handled using the Provider package.',
                    buttonName: 'Read More',
                    link: 'https://github.com/mainulislamfahim/BlogApp.git',
                  ),
                ),
              ), //blog
              const SizedBox(height: 24),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isShopaholic = value;
                  });
                },
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isShopaholic = value;
                    });
                  },
                  child: buildAnimateContainer(
                    title: 'Shopaholic',
                    asset: AppAsset.coding,
                    hover: widget.isShopaholic,
                    description:
                    'The Flutter Blog App is a mobile application that enables users to read, create, update, and delete blog posts. The app includes features such as user authentication, a blog post list, and detailed views for reading and managing blog posts. State management is handled using the Provider package.',
                    buttonName: 'Read More',
                    link: 'https://github.com/mainulislamfahim/BlogApp.git',
                  ),
                ),
              ), //shopaholic
              const SizedBox(height: 24),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isTutorsPlan = value;
                  });
                },
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isTutorsPlan = value;
                    });
                  },
                  child: buildAnimateContainer(
                    title: 'Tutors Plan',
                    asset: AppAsset.coding,
                    hover: widget.isTutorsPlan,
                    description:
                    'The Flutter Blog App is a mobile application that enables users to read, create, update, and delete blog posts. The app includes features such as user authentication, a blog post list, and detailed views for reading and managing blog posts. State management is handled using the Provider package.',
                    buttonName: 'Read More',
                    link: 'https://github.com/mainulislamfahim/BlogApp.git',
                  ),
                ),
              ), //Tutors Plan

            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isExpenseTracker = value;
                  });
                },
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isExpenseTracker = value;
                    });
                  },
                  child: buildAnimateContainer(
                    title: 'ExpenseTracket',
                    asset: AppAsset.coding,
                    hover: widget.isExpenseTracker,
                    description:
                        'Expense Tracker App can track all our day-to-day expenses'
                        'Features: Dard Mode theme, Pie Chart, Chart Bar, Catagorize Expenses',
                    buttonName: 'Read More',
                    link: 'https://github.com/Mainul2723/ExpenseTracker',
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
                  hover: widget.isQuiz,
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
                    isEduTechMaster = value;
                  });
                },
                child: buildAnimateContainer(
                  title: 'EduTechMaster',
                  asset: AppAsset.analytics,
                  hover: widget.isEduTechMaster,
                  description:
                      'EduTechMaster is a Educational App where there are courses according to the topics.User'
                      'can Bookmark their courses and secured Login-Registration were handled by Firebase-Auth',
                  buttonName: 'Read More',
                  link: 'https://github.com/Mainul2723/EduTechMaster',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isHadith = true;
                  });
                },
                child: buildAnimateContainer(
                  title: 'HadithApp',
                  asset: AppAsset.analytics,
                  hover: widget.isEduTechMaster,
                  description:
                      'Clone App which is available on Playstore called HadithApp by IRD Foundation',
                  buttonName: 'Read More',
                  link: 'https://github.com/Mainul2723/hadithApp/tree/master',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isWoWfood = true;
                  });
                },
                child: buildAnimateContainer(
                  title: 'WoWfood',
                  asset: AppAsset.analytics,
                  hover: widget.isEduTechMaster,
                  description:
                      'This is a Restaurant Theme Website Template, designed using html, Bootstrap and css. User can order food, foods will'
                      'automatically add to the cart where user can edit the orders quantity. For more go through the index.html Thank you',
                  buttonName: 'Read More',
                  link: 'https://mainul2723.github.io/WoWFood-HTML-BOOTSTRAP/',
                ),
              ),
              const SizedBox(
                height: 24,
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
                        'The Salat app shows the timetable of the Salat based on their location, forbidden times of prayers. It also navigates the Qibla location. '
                        'The next feature of this app is Surah, Hadith and Mosques. There is also an Arabic Calendar',
                    buttonName: 'Read More',
                    link:
                        'https://github.com/Mainul2723/Salat-Android-Studio-JAVA',
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ],
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
