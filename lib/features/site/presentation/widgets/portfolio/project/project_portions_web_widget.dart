import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:site/features/site/data/models/portfolio_portion.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:site/features/site/presentation/widgets/portfolio/project/portion_pictures_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPortionsWebWidget extends StatelessWidget {
  const ProjectPortionsWebWidget({
    Key? key,
    required this.portions,
  }) : super(key: key);

  final List<PortfolioPortion> portions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var portion = portions[index];
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (portions.length > 1)
                        Text(
                          portion.title,
                          textAlign: TextAlign.start,
                          style: context.headerStyle,
                        ),
                      const SizedBox(height: 10),
                      Text(portion.description,
                          textAlign: TextAlign.start,
                          style: context.normalStyle),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          if (portion.link.isNotEmpty)
                            TextButton(
                              onPressed: () async => await launchUrl(
                                  Uri.parse(portion.link),
                                  mode: LaunchMode.externalApplication),
                              child: Text(
                                AppLocalizations.of(context)!.reviewApp,
                                style: context.normalStyle,
                              ),
                            ),
                          const SizedBox(height: 10),
                          if (portion.source.isNotEmpty)
                            TextButton(
                              onPressed: () async => await launchUrl(
                                  Uri.parse(portion.source),
                                  mode: LaunchMode.externalApplication),
                              child: Text(
                                  AppLocalizations.of(context)!.reviewSource,
                                  style: context.normalStyle),
                            ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (portion.pictures.isNotEmpty)
                        PortionPicturesWidget(pictures: portion.pictures)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            if (index != portions.length - 1)
              Column(
                children: const [Divider(thickness: 1), SizedBox(height: 5)],
              ),
          ],
        );
      },
      itemCount: portions.length,
    );
  }
}
