import 'package:flutter/material.dart';
import 'package:music_app/components/navbar.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  final String title = "A Thousand Kisses Deep";
  final String artist = "Leonard Cohen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios_new_rounded),
                  Text(
                    artist,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(Icons.favorite_outline_rounded),
                ],
              ),
            ),

            //image
            Padding(
              padding: const EdgeInsets.all(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset("images/image.png"),
              ),
            ),

            //title
            Text(
              "\"$title\"",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
