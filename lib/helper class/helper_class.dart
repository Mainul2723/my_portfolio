import 'package:flutter/material.dart';

class Helper extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final double paddingWidth;
  final Color bgColor;
  const Helper(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop,
      required this.bgColor,
      required this.paddingWidth});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return Container(
            height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.05, horizontal: 18),
            alignment: Alignment.center,
            color: bgColor,
            child: mobile,
          );
        } else if (constraints.maxWidth < 1200) {
          return Container(
            height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.1, horizontal: paddingWidth),
            alignment: Alignment.center,
            color: bgColor,
            child: tablet,
          );
        } else {
          return Container(
            height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.1, horizontal: paddingWidth),
            alignment: Alignment.center,
            color: bgColor,
            child: desktop,
          );
        }
      },
    );
  }
}
