import 'package:egorcpr/app/sections/about/about_mobile.dart';
import 'package:egorcpr/app/sections/about/about_tab.dart';
import 'package:egorcpr/app/sections/about/about_web.dart';

import 'package:egorcpr/core/res/responsive.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        web: const AboutWeb(),
        mobile: const AboutMobile(),
        tablet: const AboutTab());
  }
}
