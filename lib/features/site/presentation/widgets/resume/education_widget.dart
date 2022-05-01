import 'package:flutter/material.dart';
import 'package:site/features/site/data/models/education.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
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
              title:
                  Text('${edu.grade} ${edu.field}', style: context.normalStyle),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(edu.university, style: context.smallStyle),
                  Text('${edu.startYear} - ${edu.endYear}',
                      style: context.smallStyle),
                ],
              ),
              leading: const Icon(Icons.school),
            ),
            if (index != list.length - 1)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: const [
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5),
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
