import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get key => scaffoldKey;
}
