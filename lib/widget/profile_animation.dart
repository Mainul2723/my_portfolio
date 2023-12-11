import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';

class ProAnimate extends StatefulWidget {
  const ProAnimate({super.key});

  @override
  State<ProAnimate> createState() => _ProAnimateState();
}

class _ProAnimateState extends State<ProAnimate> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this)
          ..repeat(reverse: true);
    _animation =
        Tween(begin: const Offset(0, 0.001), end: const Offset(0, -0.3))
            .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        AppAsset.mainul1,
        width: 450,
        height: 500,
      ),
    );
  }
}
