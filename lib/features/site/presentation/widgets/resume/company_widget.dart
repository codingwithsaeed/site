import 'package:flutter/material.dart';
import 'package:site/features/site/data/models/company.dart';
import 'package:site/features/site/presentation/l10n/l10n.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
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
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var work = list[index];
        return Column(
          children: [
            ListTile(
              onTap: () async {
                if (work.website.isNotEmpty) {
                  await launchUrl(Uri.parse(work.website),
                      mode: LaunchMode.externalApplication);
                }
              },
              title: Text(work.title, style: context.normalStyle),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(work.name, style: context.smallStyle),
                  Text(work.city, style: context.smallStyle),
                  Text(
                      '${work.startMonth} ${work.startYear} - ${work.endMonth} ${work.endYear}',
                      style: context.smallStyle),
                ],
              ),
              leading: const Icon(Icons.work),
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
