import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:site/features/site/domain/entities/user.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:site/features/site/presentation/widgets/home/circle_network_image.dart';
import 'package:site/features/site/utils/consts.dart';

class AboutMePage extends StatelessWidget {
  static const id = 'AboutMePage';
  final User user;

  const AboutMePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.about,
          style: context.headerStyle,
        ),
        shape: roundedRectangleBorder,
      ),
      body: mainBody(context),
    );
  }

  Widget mainBody(BuildContext context) {
    return Responsive(
      mobile: onMobile(context),
      tablet: context.width <= 600 ? onMobile(context) : onDesktop(context),
      desktop: onDesktop(context),
    );
  }

  Widget onMobile(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(
            horizontal: context.width <= 600
                ? (context.width / 20)
                : (context.width / 15),
            vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            if (context.width <= 600) showImageAndTitle(context),
            Text(user.person.about, style: context.normalStyle),
            const Spacer(),
          ],
        ),
      );

  Widget onDesktop(BuildContext context) => Row(
        children: [
          Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  showImageAndTitle(context),
                ],
              )),
          Expanded(flex: context.isTablet ? 5 : 4, child: onMobile(context))
        ],
      );

  Widget showImageAndTitle(BuildContext context) {
    late String source;
    if (user.person.pictures.isNotEmpty) {
      source = user.person.pictures.length >= 2
          ? user.person.pictures[1]
          : user.person.pictures.first;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleNetworkImage(
          source: source,
          radius: context.isMobile
              ? 90
              : context.isTablet
                  ? 120
                  : 140,
        ),
        const SizedBox(height: 5),
        Text(user.person.name,
            style: TextStyle(
              fontSize: context.isMobile
                  ? 24
                  : context.isTablet
                      ? 36
                      : 40,
              shadows: const [
                Shadow(
                  blurRadius: 5,
                  color: backgroundColor,
                  offset: Offset(0, 0),
                ),
              ],
              fontWeight: FontWeight.w700,
              color: primaryColor,
            )),
        const SizedBox(height: 5),
        Text(user.person.title,
            style: TextStyle(
              fontSize: context.isMobile
                  ? 20
                  : context.isTablet
                      ? 25
                      : 30,
              shadows: const [
                Shadow(
                  blurRadius: 10,
                  color: Colors.white,
                  offset: Offset(5, 5),
                ),
              ],
            )),
        const SizedBox(height: 10),
      ],
    );
  }
}
