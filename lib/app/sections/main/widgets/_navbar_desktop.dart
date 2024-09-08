import 'package:egorcpr/app/utils/navbar_utils.dart';
import 'package:egorcpr/app/widgets/navbar_logo.dart';
import 'package:egorcpr/app/widgets/naybar_actions_button.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:egorcpr/core/providers/drawer_provider.dart';
import 'package:egorcpr/core/providers/scroll_provider.dart';
import 'package:egorcpr/core/res/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class NavbarWeb extends StatefulWidget {
  const NavbarWeb({super.key});

  @override
  State<NavbarWeb> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarWeb> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return Container(
      height: 160,
      color: bgColor,
      padding: EdgeInsets.symmetric(horizontal: 60.w / 12, vertical: 10),
      child: Row(
        children: [
          const NavBarLogo(),
          const Expanded(child: SizedBox()),
          ...NavBarUtils.names
              .asMap()
              .entries
              .map((e) => NavBarActionButton(label: e.value, index: e.key))
              .skipWhile((name) => name.label == "Contact"),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transform: Matrix4.translationValues(0, isHover ? -15 : 0, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: isHover ? secondaryColor : primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    isHover = value;
                  });
                },
                onTap: () {
                  scrollProvider.jummTo(3);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Text(
                    "Contact",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NavbarTablet extends StatefulWidget {
  const NavbarTablet({super.key});

  @override
  State<NavbarTablet> createState() => _NavbarTabletState();
}

class _NavbarTabletState extends State<NavbarTablet> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    return Container(
      color: bgColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 5.w : 10, vertical: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                drawerProvider.key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu)),
          Expanded(child: SizedBox()),
          NavBarLogo()
        ],
      ),
    );
  }
}
