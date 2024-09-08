import 'package:flutter/cupertino.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollProvider extends ChangeNotifier {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  final scrollDuration = const Duration(seconds: 1);

  void jummTo(int index) => itemScrollController.scrollTo(
      index: index,
      curve: Curves.easeInOutCubic,
      alignment: 0,
      duration: scrollDuration);
}
