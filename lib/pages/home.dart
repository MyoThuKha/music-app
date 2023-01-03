import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String username = "Giogi";
  final String artist = "Leonard Cohen";
  final String name = "A Thousand Kisses Deep";

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Hello $username",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              TextField(
                controller: inputController,
                decoration: InputDecoration(
                  hintText: "Search for music...",
                  suffixIcon: const Icon(Icons.search_rounded),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xffeaeaea),
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              //current
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffeaeaea),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    //image
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "images/image.png",
                          width: 100,
                        ),
                      ),
                    ),

                    //titles
                    SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            artist,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text("\"$name\""),
                          Row(
                            children: const [
                              Icon(Icons.skip_previous_rounded),
                              Icon(Icons.play_circle_outline_rounded),
                              Icon(Icons.skip_next_rounded),
                            ],
                          ),
                          // TODO! indicator bar (to implement)
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(10)),
                            width: 180,
                            height: 10,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //Recent Playlist
              //queue songs
              //nav bar
            ],
          ),
        ),
      ),
    );
  }
}
