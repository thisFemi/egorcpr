import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/app/utils/about_utils.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  List<bool> isHovered = List.generate(4, (index) => false);
  late double screenWidth;
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: bgColor,
      padding: EdgeInsets.only(right: 5.h, left: 5.h, top: 3.h, bottom: 3),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              AboutBody(
                  title: "Good Health and Wellbeing ",
                  logoUrl: "assets/images/goal3.png",
                  body: sDGContent),
              AboutBody(
                  title: "CPR ",
                  logoUrl: "assets/images/cpr.jpeg",
                  body: cprContent),
              AboutBody(
                  title: "Choking",
                  logoUrl: "assets/images/choking.jpeg",
                  body: chockingContent),
            ],
          )
        ],
      ),
    );
  }

  AboutBody(
      {required String title, required String logoUrl, required String body}) {
    return Column(
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.all(20),
            width: 60.w,
            height: 30.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Center(
              child: CircleAvatar(
                radius: 30.h,
                child: Padding(
                                 padding: const EdgeInsets.all(10),
                              child: ClipOval(
                                child: Image.asset(
                              logoUrl,
                          
                               fit: BoxFit.fill,
                                width: 50.w,
                                height: 60.h,
                            )))
              ),
            ),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontFamily: "JosefinSans",
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          body,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor.withOpacity(.6)),
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }

  AboutCard(int index, AboutUtils aboutUtils) {
    Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Center(
        child: CircleAvatar(
          radius: 45,
          child: ClipOval(
              child: Image.asset(
            "assets/images/sdg_logo.png",
            fit: BoxFit.cover,
            width: 80,
            height: 80,
          )),
        ),
      ),
    );
  }
}
