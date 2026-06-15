import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:hisn_almoslim/home_page/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hisn_almoslim/l10n/app_localizations.dart';
import 'package:hisn_almoslim/local_provider.dart';
import 'package:provider/provider.dart';

void main() {
  // 1. This line forces Google Fonts to only use bundled asset fonts
  //GoogleFonts.config.allowRuntimeFetching = false;

  // تغليف التطبيق بالـ Provider لتوفير حالة اللغة لكل الشاشات

  runApp(
    ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final TextTheme textTheme = Theme.of(context).textTheme;
    // الاستماع إلى اللغة الحالية من الـ Provider
    final localeProvider = Provider.of<LocaleProvider>(context);
    final isArabic = localeProvider.locale.languageCode == 'ar';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hisn Al Muslim',

      theme: ThemeData(
        // إذا كانت اللغة عربية استخدم خط 'mada'، وإذا كانت إنجليزية استخدم 'oswald'
        fontFamily: isArabic ? 'mada' : 'oswald',
        // 2. تعديل تخصيصات معينة مثل bodyMedium لـ Oswald
        /*textTheme: textTheme.copyWith(
          bodyMedium: textTheme.bodyMedium?.copyWith(fontFamily: 'oswald'),
        ),*/

        /*
        // The all app font will be this font
        textTheme: GoogleFonts.acmeTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
          */
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.yellow,
        ),
        primaryColor: Colors.blue,
        //useMaterial3: true,
      ),

      /*
      // 1. 🌍 فرض لغة التطبيق لتكون عربية دائماً بغض النظر عن لغة الجهاز
      locale: const Locale('ar', 'SA'),

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
      ],*/
      // ربط لغة التطبيق باللغة الحالية في الـ Provider
      locale: localeProvider.locale,

      // إعدادات التعريب الأساسية لفلاتر
      localizationsDelegates: const [
        AppLocalizations.delegate, // ⚠️ هذا هو الملف الخاص بنصوصك
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // اللغات التي يدعمها التطبيق
      supportedLocales: const [
        Locale('en'), // الإنجليزية
        Locale('ar'), // العربية
      ],
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
