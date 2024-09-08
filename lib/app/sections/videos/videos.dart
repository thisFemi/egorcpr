import 'package:egorcpr/app/sections/videos/widgets/videos_mobile.dart';
import 'package:egorcpr/app/sections/videos/widgets/videos_tab.dart';
import 'package:egorcpr/app/sections/videos/widgets/videos_web.dart';

import 'package:egorcpr/core/res/responsive.dart';
import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  Videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        web: const VideosWeb(),
        mobile: const VideosMobile(),
        tablet: const VideosTab());
  }
}
