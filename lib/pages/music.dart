import 'package:flutter/material.dart';
import 'package:music_app/components/control_bar.dart';
import 'package:music_app/modals/track_time.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  String title = "A Thousand Kisses Deep";
  String artist = "Leonard Cohen";
  Duration current = Duration.zero;
  Duration length = Duration.zero;

  double thumbPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ControlBar(),
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
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              formatTime(current),
                              style: const TextStyle(fontSize: 12),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  trackHeight: 4,
                                  activeTrackColor: Colors.black,
                                  thumbColor: Colors.white,
                                  thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 6)),
                              child: Slider(
                                value: thumbPosition,
                                onChanged: ((value) {
                                  setState(() {
                                    thumbPosition = value;
                                  });
                                }),
                              ),
                            ),
                            Text(
                              formatTime(length),
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
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
