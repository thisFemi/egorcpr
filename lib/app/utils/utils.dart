import 'package:egorcpr/app/sections/about/about.dart';
import 'package:egorcpr/app/sections/contact/contact.dart';
import 'package:egorcpr/app/sections/footer/footer.dart';
import 'package:egorcpr/app/sections/home/home.dart';
import 'package:egorcpr/app/sections/videos/videos.dart';
import 'package:egorcpr/core/providers/scroll_provider.dart';
import 'package:flutter/material.dart';

class BodyUtils {
  static List<Widget> views(ScrollProvider scrollProvider) {
    return [const Home(), const About(), Videos(), const Contact(), Footer()];
  }
}
