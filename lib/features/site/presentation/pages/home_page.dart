// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:site/di/injection.dart';
import 'package:site/features/site/domain/entities/user.dart';
import 'package:site/features/site/presentation/cubit/site_cubit.dart';
import 'package:site/features/site/presentation/l10n/l10n.dart';
import 'package:site/features/site/presentation/pages/about_me_page.dart';
import 'package:site/features/site/presentation/pages/portfolio_page.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:site/features/site/presentation/pages/resume_page.dart';
import 'package:site/features/site/presentation/provider/local_provider.dart';
import 'package:site/features/site/presentation/widgets/flag_button.dart';
import 'package:site/features/site/presentation/widgets/menu_item.dart';
import 'package:site/features/site/utils/consts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  static const id = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: BlocProvider(
            create: (context) => getIt<SiteCubit>(),
            child: Stack(
              children: [
                Consumer<LocalProvider>(builder: (context, provider, child) {
                  context
                      .read<SiteCubit>()
                      .getUserInfo(provider.locale.toString());
                  return const Text('');
                }),
                BlocConsumer<SiteCubit, SiteState>(
                  listener: (context, state) {
                    if (state is Error) {
                      log('Error: ${state.message}');
                    }
                    if (state is Loaded) {
                      log('user: ${state.user.toString()}');
                    }
                  },
                  builder: (context, state) {
                    return state.when(
                        initial: () => const Center(),
                        loading: () => showLoading(),
                        loaded: (user) => mainBody(context, user),
                        error: (error) => Center(
                              child: Text(error),
                            ));
                  },
                ),
              ],
            )));
  }

  Widget mainBody(BuildContext context, User user) {
    return Responsive(
      mobile: onMobile(context, user),
      tablet: context.width <= 600
          ? onMobile(context, user)
          : onDesktop(context, user),
      desktop: onDesktop(context, user),
    );
  }

  Widget onMobile(BuildContext context, User user) => Container(
        padding: EdgeInsets.symmetric(
            horizontal: context.width <= 600 ? (context.width / 20) : 8,
            vertical: 8),
        decoration: context.width <= 600 ? mobileGradientBox : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            if (context.width <= 600) showImageAndTitle(context, user),
            MenuItem(
              title: AppLocalizations.of(context)!.about,
              icon: Icons.info_rounded,
              onTap: () => Navigator.of(context)
                  .pushNamed(AboutMePage.id, arguments: user),
            ),
            MenuItem(
              title: AppLocalizations.of(context)!.resume,
              icon: Icons.text_snippet_rounded,
              onTap: () => Navigator.of(context)
                  .pushNamed(ResumePage.id, arguments: user),
            ),
            MenuItem(
              title: AppLocalizations.of(context)!.portfolio,
              icon: Icons.work_rounded,
              onTap: () => Navigator.of(context)
                  .pushNamed(PortfolioPage.id, arguments: user),
            ),
            const Spacer(),
            if (context.width <= 600) showContactRow(user),
            const SizedBox(height: 20),
            languageRow(context),
            const SizedBox(height: 10),
          ],
        ),
      );

  Widget languageRow(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlagButton(
              onPressed: () {
                if (Provider.of<LocalProvider>(context, listen: false)
                        .locale
                        .toString() !=
                    'fa')
                  Provider.of<LocalProvider>(context, listen: false).locale =
                      L10n.all.first;
              },
              asset: 'assets/images/iran.png'),
          const SizedBox(width: 10),
          FlagButton(
              onPressed: () {
                if (Provider.of<LocalProvider>(
                      context,
                      listen: false,
                    ).locale.toString() !=
                    'en')
                  Provider.of<LocalProvider>(context, listen: false).locale =
                      L10n.all.last;
              },
              asset: 'assets/images/usa.png')
        ],
      );

  Widget showContactRow(User user) {
    return SizedBox(
      height: 48,
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 48,
              height: 48,
              child: IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse(user.resume.socialNetworks[index].link)),
                  icon: Image.network(user.resume.socialNetworks[index].logo)),
            );
          },
          itemCount: user.resume.socialNetworks.length,
        ),
      ),
    );
  }

  Widget onDesktop(BuildContext context, User user) => Row(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                decoration:
                    Provider.of<LocalProvider>(context).locale == L10n.all.first
                        ? faGradientBox
                        : enGradientBox,
                child: Column(
                  children: [
                    const Spacer(),
                    showImageAndTitle(context, user),
                    const Spacer(),
                    showContactRow(user),
                    const SizedBox(height: 20),
                  ],
                ),
              )),
          Expanded(
              flex: context.isTablet ? 3 : 2, child: onMobile(context, user))
        ],
      );

  Widget showImageAndTitle(BuildContext context, User user) {
    ImageProvider imageProvider;
    if (user.person.pictures.isNotEmpty)
      imageProvider = NetworkImage(user.person.pictures.first);
    else
      imageProvider = const AssetImage('assets/images/pic.jpg');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: imageProvider,
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
                  color: Colors.black,
                  offset: Offset(5, 5),
                ),
              ],
              color: backgroundColor,
            )),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget showLoading() => const Center(
        child: CircularProgressIndicator(
          color: primaryColor,
        ),
      );
}
