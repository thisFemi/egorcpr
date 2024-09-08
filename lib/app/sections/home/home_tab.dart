import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/app/sections/home/widgets/animated_text.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: bgColor,
      child: Stack(
        children: [
          Positioned(
              top: 80,
              right: 0,
              bottom: -20,
              child: Image.asset(
                'assets/images/cpr3.png',
                fit: BoxFit.cover,
                height: 20.h,
                width: 30.h,
              )),
          Padding(
            padding: EdgeInsets.only(top: 10.h, right: 10.w, left: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      welcomeTag,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  egorCpr,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w800),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Brought to you by ",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    AnimatedTextKit(
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        animatedTexts: tabList)
                  ],
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Text(
                  miniDescription,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: textColor.withOpacity(.6)),
                ),
                SizedBox(
                  height: 4.h,
                ),
                // Center(
                //   child: Image.asset(
                //     'assets/images/cpr3.png',
                //     fit: BoxFit.fill,
                //     height: 50.h,
                //     width: 40.h,
                //   ),
                //),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
