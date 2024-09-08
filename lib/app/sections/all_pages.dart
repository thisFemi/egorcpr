import 'package:egorcpr/app/utils/videos_util.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:url_launcher/url_launcher.dart';

class AllPageWeb extends StatefulWidget {
  const AllPageWeb({super.key});

  @override
  State<AllPageWeb> createState() => _AllPageState();
}

class _AllPageState extends State<AllPageWeb> {
  List<bool> isHovered = List.generate(3, (index) => false);
  late double screenWidth;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Column(
        children: [
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              _Container(32.w, 0, videosUtils[0]),
              SizedBox(
                width: 2.w,
              ),
              _Container(32.w, 1, videosUtils[1]),
            ],
          ),
        ],
      ),
    );
  }

  _Container(double width, int index, VideosUtils videoUtils) {
    return InkWell(
      onTap: () {
        launch(videoUtils.videoUrl);
      },
      onHover: (value) {
        setState(() {
          isHovered[index] = value;
        });
      },
      child: Container(
          height: screenWidth < 1300 ? 35.h : 45.h,
          width: width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Container(
                      height: 25.w,
                      // width: width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blueAccent.withOpacity(0.8),
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withOpacity(.8)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0, 0, 0.2, 1])))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      height: 6.h,
                      width: 6.h,
                      padding: EdgeInsets.all(1.h),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: primaryColor),
                      child: const Center(
                        child: Icon(
                          Icons.play_circle,
                          color: Colors.white,
                        ),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              videoUtils.title1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: screenWidth < 1500 ? 16 : 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            // Text(videoUtils.description, over)
                          ],
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class AllPageWeb2 extends StatefulWidget {
  const AllPageWeb2({super.key});

  @override
  State<AllPageWeb2> createState() => _AllPageWeb2State();
}

class _AllPageWeb2State extends State<AllPageWeb2> {
  List<bool> isHovered = List.generate(3, (index) => false);
  late double screenWidth;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Column(
        children: [
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Container(32.w, 0, videosUtils[2]),
            ],
          ),
        ],
      ),
    );
  }

  _Container(double width, int index, VideosUtils videoUtils) {
    return InkWell(
      onTap: () {
        launch(videoUtils.videoUrl);
      },
      onHover: (value) {
        setState(() {
          isHovered[index] = value;
        });
      },
      child: Container(
          height: screenWidth < 1300 ? 35.h : 45.h,
          width: width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Container(
                      height: 25.w,
                      // width: width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blueAccent.withOpacity(0.8),
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withOpacity(.8)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0, 0, 0.2, 1])))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      height: 6.h,
                      width: 6.h,
                      padding: EdgeInsets.all(1.h),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: primaryColor),
                      child: const Center(
                        child: Icon(
                          Icons.play_circle,
                          color: Colors.white,
                        ),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              videoUtils.title1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: screenWidth < 1500 ? 16 : 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            // Text(videoUtils.description, over)
                          ],
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class AllPageTab extends StatefulWidget {
  const AllPageTab({super.key});

  @override
  State<AllPageTab> createState() => _AllPageTabState();
}

class _AllPageTabState extends State<AllPageTab> {
  @override
  List<bool> isHovered = List.generate(2, (index) => false);
  late double screenWidth;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex: 2, child: _Container(0, videosUtils[0])),
            SizedBox(
              width: 2.w,
            ),
            Expanded(flex: 2, child: _Container(1, videosUtils[1])),
            SizedBox(
              width: 2.w,
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
            Expanded(flex: 2, child: _Container(0, videosUtils[2])),
          ],
        )
      ],
    );
  }

  _Container(int index, VideosUtils videoUtils) {
    return InkWell(
      onTap: () {
        launch(videoUtils.videoUrl);
      },
      child: Container(
          height: 25.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Container(
                      height: 25.w,
                      // width: width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blueAccent.withOpacity(0.8),
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withOpacity(.8)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0, 0, 0.2, 1])))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                      height: 6.h,
                      width: 6.h,
                      padding: EdgeInsets.all(1.h),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: primaryColor),
                      child: const Center(
                        child: Icon(
                          Icons.play_circle,
                          color: Colors.white,
                        ),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              videoUtils.title1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                            // Text(videoUtils.description, over)
                          ],
                        )),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class AllPageMobile extends StatefulWidget {
  const AllPageMobile({super.key});

  @override
  State<AllPageMobile> createState() => _AllPageMobileState();
}

class _AllPageMobileState extends State<AllPageMobile> {
  List<bool> isHovered = List.generate(3, (index) => false);
  late double screenWidth;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [
          SizedBox(
            height: 4.h,
          ),
          _container(screenWidth, 0, 20.h, videosUtils[0]),
          _container(screenWidth, 0, 20.h, videosUtils[1]),
          _container(screenWidth, 0, 20.h, videosUtils[2]),
        ],
      ),
    );
  }

  _container(double width, int index, double height, VideosUtils vidoeUtils) {
    return InkWell(
      onTap: () {
        launch(vidoeUtils.videoUrl);
      },
      onHover: (value) {
        setState(() {
          isHovered[index] = value;
        });
      },
      child: Container(
          margin: EdgeInsets.only(
            bottom: 2.h,
          ),
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Container(
                      height: 25.w,
                      // width: width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blueAccent.withOpacity(0.8),
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withOpacity(.8)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: const [0, 0, 0.2, 1])))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      height: 6.h,
                      width: 6.h,
                      padding: EdgeInsets.all(1.h),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: primaryColor),
                      child: const Center(
                        child: Icon(
                          Icons.play_circle,
                          color: Colors.white,
                        ),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vidoeUtils.title1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                            // Text(videoUtils.description, over)
                          ],
                        )),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
