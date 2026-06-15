import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  // اللغة الافتراضية للتطبيق (مثلاً الإنجليزية)
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  // دالة لتغيير اللغة وعكسها
  void toggleLocale() {
    if (_locale.languageCode == 'en') {
      _locale = const Locale('ar'); // تحويل للعربية
    } else {
      _locale = const Locale('en'); // تحويل للإنجليزية
    }
    notifyListeners(); // إشخاص الواجهات بإعادة البناء فوراً
  }
}
