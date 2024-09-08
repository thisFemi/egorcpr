import 'package:egorcpr/app/sections/all_pages.dart';
import 'package:egorcpr/app/widgets/navbar_videos_button.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VideosWeb extends StatefulWidget {
  const VideosWeb({super.key});

  @override
  State<VideosWeb> createState() => _VideosWebState();
}

class _VideosWebState extends State<VideosWeb> with TickerProviderStateMixin {
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
          height: screeWidth < 130 ? 70.h : 80.h,
            width: 100.w,
          color: secondaryColor,
      
        ),
        // Image.asset("assets/images/vector.jpeg",
           
        //     fit: BoxFit.cover),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Center(
                child: Text(
                  "Watch Demonstrations",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'JosefinSans',
                      fontSize: screeWidth < 1500 ? 40 : 50,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: SizedBox(
                height: 50,
                child: TabBar(
                  tabs: _tabs,
                  controller: _controller,
                  labelPadding: const EdgeInsets.all(0),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.white,
                  indicatorColor: primaryColor,
                  indicatorWeight: .2,
                  onTap: (value) {
                    setState(() {});
                  },
                  unselectedLabelColor: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: screeWidth < 1300 ? 40.h : 60.h,
              child: TabBarView(controller: _controller, children: [
                _controller.index == 0 ? AllPageWeb() : AllPageWeb2()
                // ...List.generate(_tabs.length, (index) {
                //   return const AllPageWeb();
                // })
              ]),
            )
          ],
        )
      ],
    );
  }
}
