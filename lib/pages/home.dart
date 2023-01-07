// import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:music_app/components/navbar.dart';
import 'package:music_app/components/queue_item.dart';
import '../components/item.dart';

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
      extendBody: true,
      bottomNavigationBar: const AppNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //app bar
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Recent PlayList"),
                    Text("More"),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Item(
                      image: "images/image.png",
                      artist: "The Beatles",
                      title: "Don't Let Me Down"),
                  Item(
                      image: "images/image.png",
                      artist: "Gary B.B. Coleman",
                      title: "The Sky is Crying"),
                  Item(
                      image: "images/image.png",
                      artist: "Frank Sinatra",
                      title: "Kill Me Softly")
                ],
              ),
              //queue songs
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: QueueItem(
                        artist: "Sting",
                        title: "Shape of My Heart",
                        isFav: true,
                      ),
                    );
                  }),
                ),
              )

              //nav bar
            ],
          ),
        ),
      ),
    );
  }
}
