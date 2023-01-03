import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = "Giogi";

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
                    "Hello $name",
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
                    children: [Container()],
                  )),

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
