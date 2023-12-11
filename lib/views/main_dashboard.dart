// ignore_for_file: unused_import, duplicate_ignore, avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_color.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/views/about_me.dart';
import 'package:my_portfolio/views/contact_me.dart';
import 'package:my_portfolio/views/footer_class.dart';
import 'package:my_portfolio/views/home_page.dart';
import 'package:my_portfolio/views/my_projects.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  var menuIndex = 0;
  var fixedPageIndex;
  final isMenuHover = Matrix4.identity()..scale(1.0);
  final menuItems = <String>[
    'Home',
    'About',
    'Project',
    'Contact',
  ];
  final yourScrollController = ScrollController();

  final screen = const <Widget>[
    HomePage(),
    AboutMe(),
    MyServices(),
    ContactMe(),
    Footer(),
  ];
  bool isNavMenuOpen = false;

  void handleMenuItemTap(int index) {
    if (index != fixedPageIndex) {
      setState(() {
        menuIndex = index;
      });
    }
  }

  void _openNavMenu() {
    setState(() {
      isNavMenuOpen = !isNavMenuOpen;
    });
    // if (isNavMenuOpen) {
    //   Scaffold.of(context).openEndDrawer();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 40,
        elevation: 5,
        title: LayoutBuilder(
          builder: (context, constraints) {
            var isNarrowScreen = constraints.maxWidth < 768;
            if (isNarrowScreen) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Mainul\'s Portfolio',
                      style: AppTextStyles.headingTextStyle()),
                  const Spacer(),
                  // IconButton(
                  //   onPressed:
                  //       // _openNavMenu;
                  //       _openNavMenu,
                  //   icon: const Icon(
                  //     Icons.menu_sharp,
                  //     size: 32,
                  //     color: Colors.white,
                  //   ),
                  // ),
                ],
              );
            } else {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Mainul\'s Portfolio',
                    style: GoogleFonts.oswald(
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                      itemCount: menuItems.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => handleMenuItemTap(index),
                          borderRadius: BorderRadius.circular(100),
                          onHover: (value) {
                            setState(() {
                              menuIndex = index;
                            });
                          },
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: buildAnimatedContainer(
                                index, menuIndex == index),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              );
            }
          },
        ),
      ),
      endDrawer: buildNavMenu(),
      body: screen[menuIndex],
    );
  }

  Widget buildNavMenu() {
    return Drawer(
      surfaceTintColor: Colors.white,
      //backgroundColor: Colors.white,
      // shadowColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.bgColor,
            ),
            child: Text(
              'Mainul\'s Portfolio',
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          buildDrawerItem(0, 'Home'),
          buildDrawerItem(1, 'About'),
          buildDrawerItem(2, 'Project'),
          buildDrawerItem(3, 'Contact'),
        ],
      ),
    );
  }

  Widget buildDrawerItem(int index, String title) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.poppins(fontSize: 18),
      ),
      onTap: () {
        handleMenuItemTap(index);
        Navigator.pop(context);
        // Close the drawer after tapping a menu item
      },
    );
  }

  AnimatedContainer buildAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
        alignment: Alignment.center,
        width: hover ? 80 : 75,
        duration: const Duration(milliseconds: 200),
        transform: hover ? isMenuHover : null,
        child: Center(
          child: InkWell(
            onTap: () {
              // Use Navigator to navigate to the corresponding page
              handleMenuItemTap(index);
            },
            // Center the text within the container
            child: Text(
              menuItems[index],
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.headingTextStyle(
                color: hover ? AppColors.themeColor : Colors.white,
              ),
            ),
          ),
        ));
  }
}
