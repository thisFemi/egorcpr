import 'package:egorcpr/core/res/responsive.dart';
import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Responsive.isWeb(context)?200:70,
        child: Image.asset("assets/images/sdg_logo.png"));
  }
}
