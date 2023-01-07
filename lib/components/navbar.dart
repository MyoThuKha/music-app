import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  @override
  Widget build(BuildContext context) {
    return DotNavigationBar(
        currentIndex: 0,
        onTap: ((p0) {
          print("Hello");
        }),
        items: [
          DotNavigationBarItem(
            icon: const Icon(Icons.home_filled),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.bar_chart_rounded),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite_rounded),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.account_circle_outlined),
          ),
        ]);
  }
}
