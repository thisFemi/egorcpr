import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/app/sections/home/widgets/animated_text.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({super.key});

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 100.h,
      color: bgColor,
      child: Stack(
        children: [
          Positioned(
              top: 80,
              left: screenWidth - 55.w,
              child: SizedBox(
                height: 100.h,
                child: Image.asset(
                  'assets/images/cpr3.png',
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            width: 60.w,
            child: Padding(
              padding: EdgeInsets.only(
                  top: screenWidth < 1200 ? 30.h : 40.h, left: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        welcomeTag,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: .5.h,
                  ),
                  Text(
                    egorCpr,
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 60,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        "Brought to you by ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      AnimatedTextKit(
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          animatedTexts: webList)
                    ],
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Text(
                      miniDescription,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: textColor.withOpacity(.6)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
