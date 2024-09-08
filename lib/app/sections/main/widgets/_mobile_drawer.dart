import 'package:egorcpr/app/utils/navbar_utils.dart';
import 'package:egorcpr/app/widgets/navbar_logo.dart';
import 'package:egorcpr/core/providers/drawer_provider.dart';
import 'package:egorcpr/core/providers/scroll_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({super.key});

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: Column(
            children: [
              const Center(
                child: NavBarLogo(),
              ),
              const Divider(),
              ...NavBarUtils.names.asMap().entries.map((e) => MaterialButton(
                    onPressed: () {
                      drawerProvider.key.currentState!.closeDrawer();
                      scrollProvider.jummTo(e.key);
                    },
                    child: ListTile(
                      leading: Icon(
                        NavBarUtils.icons[e.key],
                        color: Colors.black,
                      ),
                      title: Text(e.value),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
