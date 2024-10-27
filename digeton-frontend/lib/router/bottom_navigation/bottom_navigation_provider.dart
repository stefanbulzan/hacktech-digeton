import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_provider.g.dart';

@Riverpod()
class BottomNavigation extends _$BottomNavigation {
  @override
  int build() => _currentIndex;

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void selectPage(int index) {
    _currentIndex = index;
    state = index;
  }
}
