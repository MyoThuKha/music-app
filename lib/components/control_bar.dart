import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlBar extends StatelessWidget {
  const ControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 25),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: const Color(0xff131930),
          borderRadius: BorderRadius.circular(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.shuffle_rounded, color: Colors.white),
          Icon(
            Icons.skip_previous_rounded,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.play_circle_outline_rounded,
            color: Colors.white,
            size: 60,
          ),
          Icon(
            Icons.skip_next_rounded,
            color: Colors.white,
            size: 30,
          ),
          Icon(CupertinoIcons.repeat, color: Colors.white),
        ],
      ),
    );
  }
}
