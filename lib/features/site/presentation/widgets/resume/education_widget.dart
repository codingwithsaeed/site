import 'package:flutter/material.dart';
import 'package:site/features/site/data/models/education.dart';
import 'package:url_launcher/url_launcher.dart';

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
