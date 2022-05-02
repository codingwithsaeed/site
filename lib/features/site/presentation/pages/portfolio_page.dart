import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:site/features/site/domain/entities/user.dart';
import 'package:site/features/site/presentation/pages/project_page.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:site/features/site/presentation/widgets/portfolio_widget.dart';
import 'package:site/features/site/presentation/widgets/resume/section_header.dart';
import 'package:site/features/site/utils/consts.dart';

class PortfolioPage extends StatelessWidget {
  static const id = 'PortfolioPage';
  final User user;

  const PortfolioPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppLocalizations.of(context)!.portfolio, style: context.headerStyle),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        body: Responsive(
          mobile: onMobileOrTablet(
              context,
              EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30)),
          tablet: onMobileOrTablet(
              context,
              EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 10)),
          desktop: onDesktop(context),
        ));
  }

  Widget onDesktop(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [showImageAndTitle(context)],
            )),
        Expanded(
          flex: 3,
          child: onMobileOrTablet(
              context,
              EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 15,
              )),
        )
      ],
    );
  }

  Widget onMobileOrTablet(BuildContext context, EdgeInsets padding) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              if (!context.isDesktop) showImageAndTitle(context),
              const SizedBox(height: 10),
              showAndroidPortfolio(context),
              const SizedBox(height: 10),
              showFlutterPortfolio(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget showImageAndTitle(BuildContext context) {
    late ImageProvider imageProvider;
    if (user.person.pictures.isNotEmpty) {
      imageProvider = NetworkImage(user.person.pictures.length == 4
          ? user.person.pictures.last
          : user.person.pictures[0]);
    } else {
      imageProvider = const AssetImage('assets/images/pic.jpg');
    }
    return Column(
      mainAxisAlignment:
          context.isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: imageProvider,
          radius: context.isDesktop ? 140 : 90,
        ),
        const SizedBox(height: 10),
        Text(user.person.name,
            style: TextStyle(
              fontSize: context.isDesktop ? 40 : 24,
              shadows: const [
                Shadow(
                  blurRadius: 5,
                  color: Colors.white,
                  offset: Offset(0, 0),
                ),
              ],
              fontWeight: FontWeight.w700,
              color: primaryColor,
            )),
        const SizedBox(height: 10),
        Text(user.person.title,
            style: TextStyle(
              fontSize: context.isDesktop
                  ? 30
                  : context.isTablet
                      ? 18
                      : 20,
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

  Widget showAndroidPortfolio(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)!.android),
        PortfolioWidget(
          list: user.portfolio.android,
          onTap: (index) => Navigator.pushNamed(
            context,
            ProjectPage.id,
            arguments: user.portfolio.android[index],
          ),
        ),
      ],
    );
  }

  Widget showFlutterPortfolio(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)!.flutter),
        PortfolioWidget(
          list: user.portfolio.flutter,
          onTap: (index) => Navigator.pushNamed(
            context,
            ProjectPage.id,
            arguments: user.portfolio.flutter[index],
          ),
        ),
      ],
    );
  }
}
