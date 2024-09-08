import 'package:egorcpr/app/changes/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SlideShow extends StatefulWidget {
  const SlideShow({super.key});

  @override
  State<SlideShow> createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  final imgList = [slide1, slide2, slide3];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
            animateToClosest: true,
            aspectRatio: 2.8,
            pauseAutoPlayOnTouch: true,
            autoPlay: true,
            enableInfiniteScroll: true,
            viewportFraction: 1),
        items: imgList
            .map((img) => Image.asset(
              img,
              
              fit: BoxFit.contain,
              height: 80.h,
              width: 50.h,
            ))
            .toList());
  }
}
