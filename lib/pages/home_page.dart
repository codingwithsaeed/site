import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:site/l10n/l10n.dart';
import 'package:site/pages/about_me_page.dart';
import 'package:site/pages/responsive.dart';
import 'package:site/provider/local_provider.dart';
import 'package:site/utils/consts.dart';
import 'package:site/widgets/flag_button.dart';
import 'package:site/widgets/menu_item.dart';

class HomePage extends StatelessWidget {
  static const id = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: onMobile(context),
        tablet: onTablet(context),
        desktop: onDesktop(context),
      ),
    );
  }

  Widget onMobile(BuildContext context) => Container(
        padding: const EdgeInsets.all(8.0),
        decoration: context.isMobile ? gradientBox : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            if (context.isMobile) showImageAndTitle(context),
            MenuItem(
              title: AppLocalizations.of(context)?.about ?? '',
              icon: Icons.info_rounded,
              onTap: () => Navigator.of(context).pushNamed(AboutMePage.id),
            ),
            MenuItem(
                title: AppLocalizations.of(context)?.resume ?? '',
                icon: Icons.text_snippet_rounded),
            MenuItem(
                title: AppLocalizations.of(context)?.portfolio ?? '',
                icon: Icons.work_rounded),
            const Spacer(),
            showContactRow(),
            const SizedBox(height: 20),
            languageRow(context),
            const SizedBox(height: 20),
          ],
        ),
      );

  Widget languageRow(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlagButton(
              onPressed: () =>
                  Provider.of<LocalProvider>(context, listen: false).locale =
                      L10n.all.first,
              asset: 'assets/images/iran.png'),
          const SizedBox(width: 10),
          FlagButton(
              onPressed: () =>
                  Provider.of<LocalProvider>(context, listen: false).locale =
                      L10n.all.last,
              asset: 'assets/images/usa.png')
        ],
      );

  Widget showContactRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/telegram.svg'),
        SvgPicture.asset('assets/images/linkedin.svg'),
        SvgPicture.asset('assets/images/instagram.svg'),
      ],
    );
  }

  Widget onTablet(BuildContext context) => onDesktop(context);

  Widget onDesktop(BuildContext context) => Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: gradientBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    showImageAndTitle(context),
                  ],
                ),
              )),
          Expanded(flex: context.isTablet ? 2 : 1, child: onMobile(context))
        ],
      );

  Widget showImageAndTitle(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: const AssetImage(
            'assets/images/pic.jpg',
          ),
          radius: context.isMobile ? 90 : 140,
        ),
        const SizedBox(height: 10),
        Text(AppLocalizations.of(context)?.name ?? '',
            style: TextStyle(
              fontSize: context.isMobile ? 24 : 40,
              shadows: const [
                Shadow(
                  blurRadius: 5,
                  color: Colors.white,
                  offset: Offset(0, 0),
                ),
              ],
              fontWeight: FontWeight.w700,
              color: const Color.fromARGB(255, 42, 2, 49),
            )),
        const SizedBox(height: 10),
        Text(AppLocalizations.of(context)?.title ?? '',
            style: TextStyle(
              fontSize: context.isMobile ? 20 : 30,
              shadows: const [
                Shadow(
                  blurRadius: 10,
                  color: Colors.black,
                  offset: Offset(5, 5),
                ),
              ],
              color: Colors.purple.shade50,
            )),
        const SizedBox(height: 10),
      ],
    );
  }
}
