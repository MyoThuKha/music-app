import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String image;
  final String title;
  final String artist;
  const Item(
      {super.key,
      required this.image,
      required this.artist,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          //image
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              image,
              width: 88,
            ),
          ),

          //info
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                artist,
                style: TextStyle(color: Colors.grey[600], fontSize: 8),
              ),
            ],
          )
        ],
      ),
    );
  }
}
