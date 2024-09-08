import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/app/sections/footer/footer.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FooterWeb extends StatefulWidget {
  const FooterWeb({super.key});

  @override
  State<FooterWeb> createState() => _FooterWebState();
}

class _FooterWebState extends State<FooterWeb> {
  List<bool> isHovered = List.generate(5, (index) => false);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
        height: screenWidth < 1300 ? 50.h : 60.h,
        width: 100.w,
        color: textColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  "In collaboration with",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "JosefinSans",
                      fontSize: screenWidth < 1500 ? 30 : 40,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: screenWidth < 1300 ? 4.h : 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FooterIcon(0, "assets/images/nysc.png"),
                  SizedBox(
                    width: 2.w,
                  ),
                  FooterIcon(1, "assets/images/egor.png"),
                  SizedBox(
                    width: 2.w,
                  ),
                  FooterIcon(2, "assets/images/sdg_logo.png"),
                  SizedBox(
                    width: 2.w,
                  ),
                  FooterIcon(3, "assets/images/ubth.png"),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Divider(
                color: Colors.white54,
                thickness: 2,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                developerCopyRight,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              )
            ],
          ),
        ));
  }

  FooterIcon(int index, String img) {
    return AnimatedContainer(
      height: 6.h,
      width: 6.h,
      duration: Duration(milliseconds: 300),
      transform: Matrix4.translationValues(0, isHovered[index] ? -15 : 0, 0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isHovered[index] ? secondaryColor : Colors.white),
      child: InkWell(
        onHover: (value) {
          setState(() {
            isHovered[index] = value;
          });
        },
        onTap: () {},
        child: Image.asset(img),
      ),
    );
  }
}
