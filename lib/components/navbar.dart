import 'package:flutter/material.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  @override
  Widget build(BuildContext context) {
    // return DotNavigationBar(
    //     currentIndex: 0,
    //     onTap: ((p0) {
    //       print("Hello");
    //     }),
    //     items: [
    //       DotNavigationBarItem(
    //         icon: const Icon(Icons.home_filled),
    //       ),
    //       DotNavigationBarItem(
    //         icon: const Icon(Icons.bar_chart_rounded),
    //       ),
    //       DotNavigationBarItem(
    //         icon: const Icon(Icons.favorite_rounded),
    //       ),
    //       DotNavigationBarItem(
    //         icon: const Icon(Icons.account_circle_outlined),
    //       ),
    //     ]);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 25),
      height: 72,
      decoration: BoxDecoration(
          color: const Color(0xff131930),
          borderRadius: BorderRadius.circular(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.home_filled, color: Colors.white),
          Icon(Icons.bar_chart_rounded, color: Colors.white),
          Icon(Icons.favorite_rounded, color: Colors.white),
          Icon(Icons.account_circle_rounded, color: Colors.white),
        ],
      ),
    );
  }
}
