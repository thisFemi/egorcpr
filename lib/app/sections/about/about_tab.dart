import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/app/utils/about_utils.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AboutTab extends StatefulWidget {
  const AboutTab({super.key});

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  @override
  List<bool> isHovered = List.generate(4, (index) => false);
  late double screenWidth;
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: bgColor,
      padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AboutBody(
              title: "Good Health and Wellbeing ",
              logoUrl: "assets/images/goal3.png",
              isLeft: true,
              content: sDGContent),
          SizedBox(
            height: 2.h,
          ),
          AboutBody(
              title: "CPR ",
              isLeft: false,
              logoUrl: "assets/images/cpr.jpeg",
              content: cprContent),
          SizedBox(
            height: 2.h,
          ),
          AboutBody(
              title: "Choking",
              isLeft: true,
              logoUrl: "assets/images/choking.jpeg",
              content: chockingContent),
        ],
      ),
    );
  }

  AboutBody(
      {required bool isLeft,
      required String title,
      required String logoUrl,
      required String content}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: textColor,
              fontFamily: "JosefinSans",
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 2.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isLeft
                ? Expanded(
                    flex: 2,
                    child: Container(
                      // width: 45.w,
                      height: 30.h,
                      padding: EdgeInsets.only(right: 13.w, left: 5.w),
                      child: Text(
                        content,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: textColor.withOpacity(.6)),
                      ),
                    ),
                  )
                : Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 60.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Center(
                          child: CircleAvatar(
                            radius: 45.h,
                            child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: ClipOval(
                                    child: Image.asset(
                                  logoUrl,
                                  fit: BoxFit.fill,
                                  width: 40.w,
                                  height: 60.h,
                                ))),
                          ),
                        ),
                      ),
                    ),
                  ),
            !isLeft
                ? Expanded(
                    flex: 2,
                    child: Container(
                      height: 30.h,
                      padding: EdgeInsets.only(right: 13.w, left: 5.w),
                      child: Text(
                        content,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: textColor.withOpacity(.6)),
                      ),
                    ),
                  )
                : Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 60.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Center(
                          child: CircleAvatar(
                              radius: 45.h,
                              child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ClipOval(
                                      child: Image.asset(
                                    logoUrl,
                                    fit: BoxFit.fill,
                                    width: 40.w,
                                    height: 60.h,
                                  )))),
                        ),
                      ),
                    ),
                  ),
          ],
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
