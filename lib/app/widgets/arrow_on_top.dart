import 'package:egorcpr/core/animations/entry_fader.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:egorcpr/core/providers/scroll_provider.dart';
import 'package:egorcpr/core/res/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:avatar_glow/avatar_glow.dart';

class ArrowOnTop extends StatefulWidget {
  const ArrowOnTop({super.key});

  @override
  State<ArrowOnTop> createState() => _ArrowOnTopState();
}

class _ArrowOnTopState extends State<ArrowOnTop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return Positioned(
      bottom: 100,
      right: 20,
      child: EntraceFader(
          offset: Offset(0, -10),
          delay: Duration(milliseconds: 1000),
          duration: Duration(milliseconds: 250),
          child: InkWell(
            onHover: (value) {
              setState(() {
                isHover = value;
              });
            },
            onTap: () {
              scrollProvider.jummTo(0);
            },
            child: AvatarGlow(
                glowColor: primaryColor,

                //  endRadius: Responsive.isWeb(context) ? 80 : 40,
                child: Material(
                  elevation: 8,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: primaryColor,
                    child: Icon(
                      CupertinoIcons.arrow_up,
                      color: Colors.white,
                      size: Responsive.isWeb(context) ? 30 : 20,
                    ),
                    radius: Responsive.isWeb(context) ? 40 : 30,
                  ),
                )),
          )),
    );
  }
}
