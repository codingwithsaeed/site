import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:site/features/site/utils/consts.dart';


class AboutMePage extends StatelessWidget {
  static const id = 'AboutMePage';
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 184, 214),
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)?.about ?? ''),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: gradientBox,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppLocalizations.of(context)?.about_text ?? '',
                textAlign: TextAlign.start,
                style: TextStyle(
                  
                  fontSize: Responsive.isMobile(context)
                      ? 20
                      : Responsive.isTablet(context)
                          ? 25
                          : 30,
                  shadows: const [
                    Shadow(
                        blurRadius: 10,
                        color: Colors.black,
                        offset: Offset(5, 5))
                  ],
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
