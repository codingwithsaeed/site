import 'package:flutter/material.dart';
import 'package:site/features/site/data/models/project.dart';
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
