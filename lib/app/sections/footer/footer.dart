import 'package:egorcpr/app/sections/footer/widgets/footer_mobile.dart';
import 'package:egorcpr/app/sections/footer/widgets/footer_tab.dart';
import 'package:egorcpr/app/sections/footer/widgets/footer_web.dart';

import 'package:egorcpr/core/res/responsive.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        web: const FooterWeb(),
        mobile: const FooterMobile(),
        tablet: const FooterTab());
  }
}
