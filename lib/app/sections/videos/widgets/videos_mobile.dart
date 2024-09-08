import 'package:egorcpr/app/sections/all_pages.dart';
import 'package:egorcpr/app/widgets/navbar_videos_button.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VideosMobile extends StatefulWidget {
  const VideosMobile({super.key});

  @override
  State<VideosMobile> createState() => _VideosMobileState();
}

class _VideosMobileState extends State<VideosMobile>
    with TickerProviderStateMixin {
  late TabController _controller;
  final _tabs = [
    const Tab(
      child: NavbarVideosButton(label: 'CPR'),
    ),
    const Tab(
      child: NavbarVideosButton(label: 'Choking'),
    )
  ];
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screeWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          height: 80.h,
          width: 100.w,
          color: secondaryColor,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: const Center(
                child: Text(
                  "Watch Demonstrations",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'JosefinSans',
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: SizedBox(
                height: 50,
                child: TabBar(
                  tabs: _tabs,
                  controller: _controller,
                  labelPadding: const EdgeInsets.all(4),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.white,
                  indicatorColor: primaryColor,
                  tabAlignment: TabAlignment.center,
                  indicatorWeight: .1,
                  dividerColor: null,
                  unselectedLabelColor: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 70.h,
              child: TabBarView(controller: _controller, children: [
                ...List.generate(_tabs.length, (index) {
                  return const AllPageMobile();
                })
              ]),
            )
          ],
        )
      ],
    );
  }
}
