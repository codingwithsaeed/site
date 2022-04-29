import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:site/di/injection.dart';
import 'package:site/features/site/domain/entities/user.dart';
import 'package:site/features/site/presentation/l10n/l10n.dart';
import 'package:site/features/site/presentation/pages/about_me_page.dart';
import 'package:site/features/site/presentation/pages/home_page.dart';
import 'package:site/features/site/presentation/pages/resume_page.dart';
import 'package:site/features/site/presentation/provider/local_provider.dart';
import 'package:site/features/site/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          onGenerateRoute: (settings) {
            if (settings.name == ResumePage.id) {
              return MaterialPageRoute(
                builder: (context) => ResumePage(
                  user: settings.arguments as User,
                ),
              );
            }
            return null;
          },
          initialRoute: HomePage.id,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.stylus,
            PointerDeviceKind.touch,
            PointerDeviceKind.unknown
          },
        ),
        );
      },
    );
  }
}
