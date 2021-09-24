import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavProvider = StateNotifierProvider((ref) => BottomNavNotifier());

enum BottomNavEvent { SWIPE, NEWS, SETTINGS }

class BottomNavNotifier extends StateNotifier<PageModel> {
  BottomNavNotifier() : super(defaultPage);

  static const defaultPage = PageModel(BottomNavEvent.SWIPE, 0);

  void selectPage(int i) {
    switch (i) {
      case 0:
        state = PageModel(BottomNavEvent.SWIPE, i);
        break;
      case 1:
        state = PageModel(BottomNavEvent.NEWS, i);
        break;
      case 2:
        state = PageModel(BottomNavEvent.SETTINGS, i);
        break;
    }
  }
}

class PageModel {
  const PageModel(this.page, this.index);
  final BottomNavEvent page;
  final index;
}
