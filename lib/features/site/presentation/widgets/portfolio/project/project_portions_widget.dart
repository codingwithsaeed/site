import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:site/features/site/data/models/portfolio_portion.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:site/features/site/presentation/widgets/portfolio/project/portion_pictures_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPortionsWidget extends StatelessWidget {
  const ProjectPortionsWidget({
    Key? key,
    required this.portions,
  }) : super(key: key);

  final List<PortfolioPortion> portions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var portion = portions[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (portions.length > 1)
              Text(portion.title,
                  textAlign: TextAlign.start, style: context.headerStyle),
            const SizedBox(height: 10),
            Text(
              portion.description,
              textAlign: TextAlign.start,
              style: context.normalStyle,
            ),
            const SizedBox(height: 10),
            if (portion.pictures.isNotEmpty)
              PortionPicturesWidget(pictures: portion.pictures),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (portion.link.isNotEmpty)
                  TextButton(
                    onPressed: () async => await launchUrl(
                        Uri.parse(portion.link),
                        mode: LaunchMode.externalApplication),
                    child: Text(AppLocalizations.of(context)!.reviewApp,
                        style: context.normalStyle),
                  ),
                if (portion.source.isNotEmpty)
                  TextButton(
                    onPressed: () async => await launchUrl(
                        Uri.parse(portion.source),
                        mode: LaunchMode.externalApplication),
                    child: Text(
                      AppLocalizations.of(context)!.reviewSource,
                      style: context.normalStyle,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            if (index != portions.length - 1)
              Column(children: const [Divider(thickness: 1)]),
          ],
        );
      },
      itemCount: portions.length,
    );
  }
}
