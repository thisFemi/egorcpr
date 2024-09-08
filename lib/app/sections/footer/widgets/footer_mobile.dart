import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/app/sections/footer/footer.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({super.key});

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  List<bool> isHovered = List.generate(5, (index) => false);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
  
        width: 100.w,
        color: textColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 4.h,
              ),
              const Center(
                child: Text(
                  "In collaboration with",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "JosefinSans",
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: .5.h,
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
                height: .5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const Divider(
                  color: Colors.white54,
                  thickness: 2,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                developerCopyRight,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              )
            ],
          ),
        ));
  }

  FooterIcon(int index, String img) {
    return Container(
      height: 4.h,
      width: 4.h,
      padding: const EdgeInsets.all(5),
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
        child: Image.asset(img,
        
         fit: BoxFit.fill),
      ),
    );
  }
}
