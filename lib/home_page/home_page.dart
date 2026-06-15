import 'package:flutter/material.dart';
import 'package:hisn_almoslim/dependentes/screen_utils.dart';
import 'package:hisn_almoslim/home_page/home_page_drawer.dart';
import 'package:hisn_almoslim/l10n/app_localizations.dart';
import 'package:hisn_almoslim/local_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);
    final isArabic = localeProvider.locale.languageCode == 'ar';
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
        //centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.integration_instructions),
          ),
          IconButton(
            onPressed: () {
              localeProvider.toggleLocale();
            },
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      drawer: HomePageDrawer(),
      body: Container(
        height: ScreenUtils.height(context),
        width: ScreenUtils.width(context),
        child: Column(
          children: [
            ElevatedButton(
              onLongPress: () => print("Long Press"),
              onPressed: () => print("pressed"),
              child: Text("Abdoalyyyfkdsng;ldgkd;fsgkjfldkj"),
            ),
            Text("Data", style: TextStyle(fontSize: 100)),
            Text("TyYpeData", style: TextStyle(fontSize: 50)),
            ElevatedButton.icon(
              onPressed: () {
                // استدعاء دالة التغيير عند الضغط
                localeProvider.toggleLocale();
              },
              icon: const Icon(Icons.language),
              label: Text(
                isArabic ? 'Change to English' : 'التغيير إلى العربية',
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
