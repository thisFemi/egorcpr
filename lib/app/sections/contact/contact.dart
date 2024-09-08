import 'package:egorcpr/app/sections/contact/widgets/contact_mobile.dart';
import 'package:egorcpr/app/sections/contact/widgets/contact_tab.dart';
import 'package:egorcpr/app/sections/contact/widgets/contact_web.dart';
import 'package:egorcpr/core/res/responsive.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        web: const ContactWeb(),
        mobile: const ContactMobile(),
        tablet: const ContactTab());
  }
}
