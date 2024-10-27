import 'package:hacktech_app/features/home/application/theme_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_notifier.g.dart';

@Riverpod(keepAlive: true)
class ThemeNotifier extends _$ThemeNotifier {
  ThemeNotifier() {
    _initializePreferences();
  }

  SharedPreferences? _prefs;

  Future<void> _initializePreferences() async {
    _prefs = await SharedPreferences.getInstance();
    state = ThemeState(isDark: isDarkMode());
  }

  @override
  ThemeState build() {
    return const ThemeState();
  }

  bool isDarkMode() {
    return _prefs?.getBool('isDarkMode') ?? false;
  }

  Future<void> setTheme({required bool isDark}) async {
    state = state.copyWith(isDark: isDark);
    await _prefs?.setBool('isDarkMode', isDark);
  }
}
