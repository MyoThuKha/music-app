import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QueueItem extends StatelessWidget {
  final String title;
  final String artist;
  final bool isFav;
  const QueueItem(
      {super.key,
      required this.title,
      required this.artist,
      required this.isFav});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //play button
              Icon(
                Icons.play_circle_outline_rounded,
                size: 30,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 12),
              //info
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    artist,
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
          //actions
          Row(
            children: [
              const Icon(Icons.bar_chart_rounded),
              const SizedBox(width: 12),
              Icon(
                isFav ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                color: isFav ? Colors.red : null,
              ),
            ],
          )
        ],
      ),
    );
  }
}
