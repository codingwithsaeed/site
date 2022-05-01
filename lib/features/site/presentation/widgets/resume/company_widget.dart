import 'package:flutter/material.dart';
import 'package:site/features/site/data/models/company.dart';
import 'package:url_launcher/url_launcher.dart';

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
