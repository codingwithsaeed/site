import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:site/features/site/domain/entities/user.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:site/features/site/presentation/widgets/home/circle_network_image.dart';
import 'package:site/features/site/presentation/widgets/resume/company_widget.dart';
import 'package:site/features/site/presentation/widgets/resume/education_widget.dart';
import 'package:site/features/site/presentation/widgets/resume/project_widget.dart';
import 'package:site/features/site/presentation/widgets/resume/section_header.dart';
import 'package:site/features/site/presentation/widgets/resume/skill_widget.dart';
import 'package:site/features/site/utils/consts.dart';

class ResumePage extends StatelessWidget {
  static const id = 'ResumePage';
  final User user;

  const ResumePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppLocalizations.of(context)!.resume,
              style: context.headerStyle),
          shape: roundedRectangleBorder,
        ),
        body: Responsive(
          mobile: onMobileOrTablet(
              context, EdgeInsets.symmetric(horizontal: context.width / 30)),
          tablet: onMobileOrTablet(
              context, EdgeInsets.symmetric(horizontal: context.width / 10)),
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
                children: [showImageAndTitle(context)])),
        Expanded(
            flex: 3,
            child: onMobileOrTablet(
                context, EdgeInsets.symmetric(horizontal: context.width / 15)))
      ],
    );
  }

  Widget onMobileOrTablet(BuildContext context, EdgeInsets padding) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
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
              showAbout(context),
              const SizedBox(height: 10),
              showContact(context),
              const SizedBox(height: 10),
              showSkills(context),
              const SizedBox(height: 10),
              showEducation(context),
              const SizedBox(height: 10),
              showCompanies(context),
              const SizedBox(height: 10),
              showProjects(context),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget showImageAndTitle(BuildContext context) {
    late String source;
    if (user.person.pictures.isNotEmpty) {
      source = user.person.pictures.length == 4
          ? user.person.pictures[2]
          : user.person.pictures.first;
    }

    return Column(
      mainAxisAlignment:
          context.isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleNetworkImage(
          source: source,
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
        const SizedBox(height: 5),
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

  Widget showAbout(BuildContext context) => Column(
        children: [
          SectionHeader(title: AppLocalizations.of(context)!.profile),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              user.resume.profile.about,
              style: context.normalStyle,
            ),
          ),
        ],
      );

  Widget showContact(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)!.contact),
        const SizedBox(height: 5),
        ListTile(
          title: Text(user.resume.contact.email, style: context.normalStyle),
          leading: const Icon(Icons.email),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(thickness: 1),
        ),
        ListTile(
          title: Text(user.resume.contact.phone, style: context.normalStyle),
          leading: const Icon(Icons.phone_android),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(thickness: 1),
        ),
        ListTile(
          title: Text(user.resume.contact.address, style: context.normalStyle),
          leading: const Icon(Icons.location_on),
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  Widget showSkills(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)!.skills),
        const SizedBox(height: 10),
        SkillWidget(
            title: AppLocalizations.of(context)!.prog,
            skills: user.resume.skills.prog),
        const SizedBox(height: 10),
        SkillWidget(
            title: AppLocalizations.of(context)!.tech,
            skills: user.resume.skills.tech),
        const SizedBox(height: 10),
        SkillWidget(
            title: AppLocalizations.of(context)!.languages,
            skills: user.resume.skills.languages),
      ],
    );
  }

  Widget showEducation(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)!.education),
        const SizedBox(height: 10),
        EducationWidget(list: user.resume.education),
      ],
    );
  }

  Widget showCompanies(BuildContext context) {
    final list = user.resume.companies;
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)!.companies),
        const SizedBox(height: 10),
        CompanyWidget(list: list),
      ],
    );
  }

  Widget showProjects(BuildContext context) {
    final list = user.resume.projects;
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)!.projects),
        const SizedBox(height: 10),
        ProjectWidget(list: list),
      ],
    );
  }
}
