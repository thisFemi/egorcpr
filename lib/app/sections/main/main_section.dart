import 'package:egorcpr/app/sections/main/widgets/_body.dart';
import 'package:egorcpr/app/sections/main/widgets/_mobile_drawer.dart';
import 'package:egorcpr/app/sections/main/widgets/_navbar_desktop.dart';
import 'package:egorcpr/app/widgets/arrow_on_top.dart';
import 'package:egorcpr/core/providers/drawer_provider.dart';
import 'package:egorcpr/core/providers/scroll_provider.dart';
import 'package:egorcpr/core/res/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.scrollProvider});
  final ScrollProvider scrollProvider;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  final ItemScrollController itemScrollController = ItemScrollController();
  bool isShow = false;
  late VoidCallback myListener;
  @override
  void initState() {
    super.initState();
    myListener = () {
      final positions =
          widget.scrollProvider.itemPositionsListener.itemPositions.value;
      final firstVisible = positions.first.index;
      final lastVisible = positions.last.index;
      setState(() {
        isShow = firstVisible > 0 && lastVisible < 90;
      });
    };
    widget.scrollProvider.itemPositionsListener.itemPositions
        .addListener(myListener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.scrollProvider.itemPositionsListener.itemPositions
        .removeListener(myListener);
  }

  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    return SafeArea(
      child: Scaffold(
        key: drawerProvider.key,
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(160),
            child: Responsive(
              mobile: const NavbarTablet(),
              tablet: const NavbarTablet(),
              web: const NavbarWeb(),
            )),
        drawer: !Responsive.isWeb(context) ? MobileDrawer() : null,
        body: Stack(
          children: [Body(), if (isShow) ArrowOnTop()],
        ),
      ),
    );
  }
}
