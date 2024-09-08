import 'package:flutter/material.dart';

class NavbarVideosButton extends StatefulWidget {
  const NavbarVideosButton({super.key, required this.label});
  final String label;
  @override
  State<NavbarVideosButton> createState() => _NavbarVideosButtonState();
}

class _NavbarVideosButtonState extends State<NavbarVideosButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Text(
      widget.label,
      style: TextStyle(
          fontFamily: 'JosefinSans',
          fontWeight: FontWeight.w600,
          fontSize: screenWidth < 1500 ? 14 : 20,
          color: isHover ? Colors.orange : Colors.white),
    );
  }
}

class NavbarVideosMobileButton extends StatefulWidget {
  const NavbarVideosMobileButton({super.key, required this.label});
  final String label;
  @override
  State<NavbarVideosMobileButton> createState() =>
      _NavbarVideosMobileButtonState();
}

class _NavbarVideosMobileButtonState extends State<NavbarVideosMobileButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Text(
      widget.label,
      style: TextStyle(
          fontFamily: 'JosefinSans',
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: isHover ? Colors.orange : Colors.white),
    );
  }
}
