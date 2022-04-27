import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:site/pages/about_me_page.dart';
import 'package:site/pages/home_page.dart';
import 'package:site/provider/local_provider.dart';
import 'package:site/utils/utils.dart';

import 'l10n/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocalProvider(L10n.all.first),
      builder: (context, child) {
        return MaterialApp(
          title: 'CodingWithSaeed',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: L10n.all,
          locale: Provider.of<LocalProvider>(context).locale,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: const Color.fromARGB(255, 42, 2, 49).material,
            fontFamily: 'vazir',
          ),
          routes: {
            HomePage.id: (context) => const HomePage(),
            AboutMePage.id: (context) => const AboutMePage(),
          },
          initialRoute: HomePage.id,
        );
      },
    );
  }
}
