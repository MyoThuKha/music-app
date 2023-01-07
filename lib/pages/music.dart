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
      body: Column(
        children: [
          //app bar
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
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
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset("images/image.png"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                      width: 320,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("1:48"),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(10)),
                            width: 180,
                            height: 10,
                          ),
                          const Text("3:29"),
                        ],
                      )),
                )
              ],
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
    );
  }
}
