import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/intro/create_user.dart';
import 'package:music_app/pages/home.dart';
import 'package:music_app/pages/music.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      initialRoute: '/intro',
      routes: {
        '/': (context) => const HomePage(),
        '/intro': (context) => const CreateUser(),
        '/music': (context) => const MusicPage(),
      },
      // home: const MusicPage(),
    );
  }
}
