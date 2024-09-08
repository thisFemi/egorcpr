import 'package:egorcpr/app/sections/all_pages.dart';
import 'package:egorcpr/app/widgets/navbar_videos_button.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VideosTab extends StatefulWidget {
  const VideosTab({super.key});

  @override
  State<VideosTab> createState() => _VideosTabState();
}

class _VideosTabState extends State<VideosTab> with TickerProviderStateMixin {
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
          height: 60.h,
          width: 100.w,
          color: secondaryColor,
        
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const Center(
                child: Text(
                  "Watch Demonstrations",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'JosefinSans',
                      fontSize: 40,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: SizedBox(
                height: 50,
                child: TabBar(
                  tabs: _tabs,
                  controller: _controller,
                  labelPadding: const EdgeInsets.all(0),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.white,
                  indicatorColor: primaryColor,
                  indicatorWeight: 4,
                  unselectedLabelColor: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: SizedBox(
                height: 60.w,
                child: TabBarView(controller: _controller, children: [
                  ...List.generate(_tabs.length, (index) {
                    return const AllPageTab();
                  })
                ]),
              ),
            )
          ],
        )
      ],
    );
  }
}
