import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/app/sections/home/widgets/animated_text.dart';
import 'package:egorcpr/app/widgets/slide_show.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
    height: 80.h,
      color: bgColor,
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, right: 10.w, left: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Text(
              welcomeTag,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Egor Cpr",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              "Brought to you by",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            AnimatedTextKit(
                isRepeatingAnimation: true,
                repeatForever: true,
                animatedTexts: mobileList),
            SizedBox(
              height: 1.5.h,
            ),
            Text(
              miniDescription,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: textColor.withOpacity(.6)),
            ),
            SizedBox(
              height: 4.h,
            ),
            SlideShow()
          ],
        ),
      ),
    );
  }
}
