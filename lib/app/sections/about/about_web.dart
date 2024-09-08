import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/app/utils/about_utils.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  List<bool> isHovered = List.generate(4, (index) => false);
  late double screenWidth;
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: bgColor,
      padding: EdgeInsets.only(top: 10.h),
      child: Column(children: [
        AboutBody(
            title: "Good Health and Wellbeing ",
            logoUrl: "assets/images/goal3.png",
            isLeft: true,
            content: sDGContent),
        AboutBody(
            title: "CPR ",
            isLeft: false,
            logoUrl: "assets/images/cpr.jpeg",
            content: cprContent),
        AboutBody(
            title: "Choking",
            isLeft: true,
            logoUrl: "assets/images/choking.jpeg",
            content: chockingContent),
      ]),
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
                      //   width: 45.w,
                      height: 80.h,
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
                        width: 40.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Center(
                          child: CircleAvatar(
                            radius: 45.h,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipOval(
                                  child: Image.asset(
                                logoUrl,
                                fit: BoxFit.fill,
                                width: 60.w,
                                height: 70.h,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
            !isLeft
                ? Expanded(
                    flex: 2,
                    child: Container(
                      //   width: 45.w,
                      height: 80.h,
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
                        width: 40.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Center(
                          child: CircleAvatar(
                            radius: 45.h,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipOval(
                                  child: Image.asset(
                                logoUrl,
                                fit: BoxFit.fill,
                                width: 60.w,
                                height: 70.h,
                              )),
                            ),
                          ),
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
    MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered[index - 1] = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered[index - 1] = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        padding: EdgeInsets.symmetric(
            horizontal: 2.w, vertical: screenWidth < 1200 ? 1.h : 3.h),
        curve: Curves.easeInOut,
        transformAlignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
            isHovered[index - 1] ? 1.1 : 1, isHovered[index - 1] ? 1.1 : 1, 1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        height: 35.h,
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
      ),
    );
  }
}
