import 'package:egorcpr/app/sections/home/home_mobile.dart';
import 'package:egorcpr/app/sections/home/home_tab.dart';
import 'package:egorcpr/app/sections/home/home_web.dart';
import 'package:egorcpr/core/res/responsive.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        web: const HomeWeb(),
        mobile: const HomeMobile(),
        tablet: const HomeTab());
  }
}
