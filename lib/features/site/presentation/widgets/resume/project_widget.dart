import 'package:flutter/material.dart';
import 'package:site/features/site/data/models/project.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

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
              title: Text(project.name, style: context.normalStyle),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(project.description, style: context.smallStyle),
                  Text(
                      '${project.startMonth} ${project.startYear} - ${project.endMonth} ${project.endYear}',
                      style: context.smallStyle),
                ],
              ),
              leading: const Icon(Icons.extension),
            ),
            if (index != list.length - 1)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: const [
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
          ],
        );
      },
      itemCount: list.length,
    );
  }
}
