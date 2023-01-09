import 'package:flutter/material.dart';

String twoDigitFormat(int time) {
  String result = time.toString().padLeft(2, "0");
  return result;
}

String formatTime(Duration duration) {
  // int min = duration.inMinutes;
  String hour = twoDigitFormat(duration.inHours);
  String min = twoDigitFormat(duration.inMinutes.remainder(60));
  String seconds = twoDigitFormat(duration.inSeconds.remainder(60));

  String result = [min, seconds].join(":");
  return result;
}
