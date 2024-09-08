import 'package:egorcpr/core/animations/entry_fader.dart';
import 'package:egorcpr/core/providers/scroll_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavBarActionButton extends StatefulWidget {
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);
  final String label;
  final int index;

  @override
  State<NavBarActionButton> createState() => _NavBarActionButtonState();
}

class _NavBarActionButtonState extends State<NavBarActionButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return EntraceFader(
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
            scrollProvider.jummTo(widget.index);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              widget.label,
              style: TextStyle(
                  fontFamily: 'JosefinSans',
                  fontWeight: FontWeight.w300,
                  fontSize: screenWidth < 1200 ? 20 : 25,
                  color: isHover ? Colors.orange : Colors.black),
            ),
          ),
        ));
  }
}
