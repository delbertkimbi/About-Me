import 'package:deltech/about_page.dart';
import 'package:deltech/home_page.dart';
import 'package:deltech/portforlio.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _screens = [];
  final style = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  @override
  void initState() {
    super.initState();
    _screens = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'delTech',
          baseStyle: style,
          selectedStyle: style,
          colorLineSelected: const Color(0xffff914d),
        ),
        const DashBoardScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: const Color(0xffff914d),
          name: 'My Portfolio',
          baseStyle: style,
          selectedStyle: style,
        ),
        const PortforlioPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: const Color(0xffff914d),
          name: 'About Me',
          baseStyle: style,
          selectedStyle: style,
        ),
        const AboutMe(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _screens,
      backgroundColorMenu: Colors.deepPurple.shade400,
      backgroundColorAppBar: Colors.deepPurple.shade400,
      initPositionSelected: 0,
      slidePercent: 40,
      tittleAppBar: Hero(
        tag: 'logo',
        child: Image.asset(
          'assets/log.png',
          height: 100,
        ),
      ),
    );
  }
}
