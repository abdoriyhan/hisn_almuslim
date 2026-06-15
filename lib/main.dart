import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hisn_almoslim/my_home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hisn_almoslim/l10n/app_localizations.dart';

void main() {
  // 1. This line forces Google Fonts to only use bundled asset fonts
  GoogleFonts.config.allowRuntimeFetching = false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hisn Al Muslim',
      theme: ThemeData(
        // The all app font will be this font
        textTheme: GoogleFonts.acmeTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.yellow,
        ),
        primaryColor: Colors.blue,
        //useMaterial3: true,
      ),

      // 1. 🌍 فرض لغة التطبيق لتكون عربية دائماً بغض النظر عن لغة الجهاز
      //locale: const Locale('ar', 'SA'),

      // 🌍 إعدادات دعم اللغات والاتجاهات الـ RTL و LTR
      localizationsDelegates: const [
        AppLocalizations.delegate, // المترجم الخاص بك
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // 3. 🏳️ اللغات المدعومة في التطبيق
      //supportedLocales: const [
      // Locale('ar', 'SA'), // العربية (المملكة العربية السعودية)
      supportedLocales: const [
        Locale('en'), // الإنجليزية
        Locale('ar'), // العربية
      ],
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
