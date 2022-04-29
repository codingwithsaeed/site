import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:site/features/site/data/models/company.dart';
import 'package:site/features/site/data/models/education.dart';
import 'package:site/features/site/data/models/project.dart';
import 'package:site/features/site/data/models/skill.dart';
import 'package:site/features/site/domain/entities/user.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumePage extends StatelessWidget {
  static const id = 'ResumePage';
  final User user;
  const ResumePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 210, 184, 214),
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppLocalizations.of(context)?.resume ?? ''),
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
                horizontal: MediaQuery.of(context).size.width / 30),
          ),
          tablet: onMobileOrTablet(
            context,
            EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 10),
          ),
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
              children: [
                showImageAndTitle(context),
              ],
            )),
        Expanded(
          flex: 3,
            child: onMobileOrTablet(
          context,
          EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 15,
          ),
        ))
      ],
    );
  }

  Widget onMobileOrTablet(BuildContext context, EdgeInsets padding) {
    return SingleChildScrollView(
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
          ],
        ),
      ),
    );
  }

  Widget showProjects(BuildContext context) {
    final list = user.resume.projects;
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)?.projects ?? ''),
        const SizedBox(height: 10),
        ProjectWidget(list: list),
      ],
    );
  }

  Widget showCompanies(BuildContext context) {
    final list = user.resume.companies;
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)?.companies ?? ''),
        const SizedBox(height: 10),
        CompanyWidget(list: list),
      ],
    );
  }

  Widget showEducation(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)?.education ?? ''),
        const SizedBox(height: 10),
        EducationWidget(list: user.resume.education),
      ],
    );
  }

  Widget showSkills(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)?.skills ?? ''),
        const SizedBox(height: 10),
        SkillWidget(
            title: AppLocalizations.of(context)?.prog ?? '',
            skills: user.resume.skills.prog),
        const Divider(
          thickness: 1,
        ),
        const SizedBox(height: 10),
        SkillWidget(
            title: AppLocalizations.of(context)?.tech ?? '',
            skills: user.resume.skills.tech),
        const Divider(
          thickness: 1,
        ),
        const SizedBox(height: 10),
        SkillWidget(
            title: AppLocalizations.of(context)?.languages ?? '',
            skills: user.resume.skills.languages),
      ],
    );
  }

  Widget showContact(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: AppLocalizations.of(context)?.contact ?? ''),
        const SizedBox(height: 10),
        ListTile(
          title: Text(user.resume.contact.email),
          leading: const Icon(Icons.email),
        ),
        ListTile(
          title: Text(user.resume.contact.phone),
          leading: const Icon(Icons.phone_android),
        ),
      ],
    );
  }

  Widget showAbout(BuildContext context) => Column(
        children: [
          SectionHeader(title: AppLocalizations.of(context)?.profile ?? ''),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              user.resume.profile.about,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      );

  Widget showImageAndTitle(BuildContext context) {
    return Column(
      mainAxisAlignment:
          context.isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(user.person.picture),
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
              color: const Color.fromARGB(255, 42, 2, 49),
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

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 42, 2, 49),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  final String title;
  final List<Skill> skills;
  const SkillWidget({
    Key? key,
    required this.title,
    required this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 4,
                          child: Text(
                            skills[index].name,
                            textAlign: TextAlign.center,
                          )),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: RatingBarIndicator(
                          itemSize: 20,
                          direction: Axis.horizontal,
                          rating: double.parse(skills[index].level),
                          itemBuilder: ((context, index) {
                            return const Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 42, 2, 49),
                            );
                          }),
                          itemCount: 5,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: skills.length,
            ),
          ),
        ),
      ],
    );
  }
}

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Company> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var work = list[index];
        return Column(
          children: [
            ListTile(
              onTap: () async {
                if (work.website.isNotEmpty) {
                  await launchUrl(Uri.parse(work.website));
                }
              },
              title: Text(work.title, style: const TextStyle(fontSize: 15)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    work.name,
                    style: const TextStyle(fontSize: 14),
                  ),
                  Text(
                    work.city,
                    style: const TextStyle(fontSize: 14),
                  ),
                  Text(
                    '${work.startMonth} ${work.startYear} - ${work.endMonth} ${work.endYear}',
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              leading: const Icon(Icons.work),
            ),
          ],
        );
      },
      itemCount: list.length,
    );
  }
}

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Project> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var project = list[index];
        return Column(
          children: [
            ListTile(
              onTap: () async {
                if (project.link.isNotEmpty) {
                  await launchUrl(Uri.parse(project.link));
                }
              },
              title: Text(project.name, style: const TextStyle(fontSize: 15)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    project.description,
                    style: const TextStyle(fontSize: 14),
                  ),
                  Text(
                    '${project.startMonth} ${project.startYear} - ${project.endMonth} ${project.endYear}',
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              leading: const Icon(Icons.extension),
            ),
          ],
        );
      },
      itemCount: list.length,
    );
  }
}

class EducationWidget extends StatelessWidget {
  final List<Education> list;
  const EducationWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var edu = list[index];
        return Column(
          children: [
            ListTile(
              onTap: () async {
                if (edu.universityWebsite.isNotEmpty) {
                  await launchUrl(Uri.parse(edu.universityWebsite));
                }
              },
              title: Text(
                '${edu.grade} ${edu.field}',
                style: const TextStyle(fontSize: 15),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    edu.university,
                    style: const TextStyle(fontSize: 14),
                  ),
                  Text(
                    '${edu.startYear} - ${edu.endYear}',
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              leading: const Icon(Icons.school),
            ),
          ],
        );
      },
      itemCount: list.length,
    );
  }
}
