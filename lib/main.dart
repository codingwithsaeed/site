import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site/di/injection.dart';
import 'package:site/features/site/data/models/portfolio.dart';
import 'package:site/features/site/domain/entities/user.dart';
import 'package:site/features/site/presentation/l10n/l10n.dart';
import 'package:site/features/site/presentation/pages/about_me_page.dart';
import 'package:site/features/site/presentation/pages/home_page.dart';
import 'package:site/features/site/presentation/pages/portfolio_page.dart';
import 'package:site/features/site/presentation/pages/project_page.dart';
import 'package:site/features/site/presentation/pages/resume_page.dart';
import 'package:site/features/site/presentation/provider/local_provider.dart';
import 'package:site/features/site/utils/consts.dart';
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
          title: 'Saeed Ahmadi',
          localizationsDelegates: localizationsDelegates, 
          supportedLocales: L10n.all,
          locale: Provider.of<LocalProvider>(context).locale,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: primaryColor.material,
            fontFamily: 'vazir',
          ),
          routes: {
            HomePage.id: (context) => const HomePage(),
          },
          onGenerateRoute: onGenerateRoute,
          initialRoute: HomePage.id,
          scrollBehavior: scrollBehavior
        );
      },
    );
  }

  MaterialPageRoute? onGenerateRoute(settings) {
    switch (settings.name) {
      case AboutMePage.id:
        return MaterialPageRoute(
          builder: (context) => AboutMePage(
            user: settings.arguments as User,
          ),
        );
      case ResumePage.id:
        return MaterialPageRoute(
          builder: (context) => ResumePage(
            user: settings.arguments as User,
          ),
        );
      case PortfolioPage.id:
        return MaterialPageRoute(
          builder: (context) => PortfolioPage(
            user: settings.arguments as User,
          ),
        );
      case ProjectPage.id:
        return MaterialPageRoute(
          builder: (context) => ProjectPage(
            project: settings.arguments as Portfolio,
          ),
        );
    }
    return null;
  }
}
