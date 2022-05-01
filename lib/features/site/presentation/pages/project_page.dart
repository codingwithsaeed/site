import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:site/features/site/data/models/portfolio.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';
import 'package:site/features/site/utils/consts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatelessWidget {
  static const id = 'ProjectPage';
  final Portfolio _project;

  const ProjectPage({Key? key, required Portfolio project})
      : _project = project,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(_project.title, style: context.headerStyle),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: showBody(context),
    );
  }

  Widget showBody(BuildContext context) {
    return Responsive(
      mobile: onMobile(context),
      tablet: context.width < 700
          ? onMobile(context)
          : onDesktopOrTablet(
              context, EdgeInsets.all(MediaQuery.of(context).size.width / 45)),
      desktop: onDesktopOrTablet(
          context, EdgeInsets.all(MediaQuery.of(context).size.width / 35)),
    );
  }

  Widget onMobile(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _project.description,
              textAlign: TextAlign.start,
              style: context.normalStyle,
            ),
            const SizedBox(height: 10),
            showPortions(context),
          ],
        ),
      ),
    );
  }

  Widget showPortions(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var portion = _project.portions[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (_project.portions.length > 1)
              Text(
                portion.title,
                textAlign: TextAlign.start,
                style: context.headerStyle,
              ),
            const SizedBox(height: 10),
            Text(
              portion.description,
              textAlign: TextAlign.start,
              style: context.normalStyle,
            ),
            const SizedBox(height: 10),
            if (portion.pictures.isNotEmpty) showGallery(context, index),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (portion.link.isNotEmpty)
                  TextButton(
                    onPressed: () async =>
                        await launchUrl(Uri.parse(portion.link)),
                    child: Text(AppLocalizations.of(context)!.reviewApp,
                        style: context.normalStyle),
                  ),
                if (portion.source.isNotEmpty)
                  TextButton(
                    onPressed: () async =>
                        await launchUrl(Uri.parse(portion.source)),
                    child: Text(
                      AppLocalizations.of(context)!.reviewSource,
                      style: context.normalStyle,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            if (index != _project.portions.length - 1)
              Column(
                children: const [
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(height: 10),
                ],
              ),
          ],
        );
      },
      itemCount: _project.portions.length,
    );
  }

  Widget showGallery(BuildContext context, int portionIndex) {
    var portion = _project.portions[portionIndex];
    return SizedBox(
      height: context.height / 3,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                showDialog(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: SafeArea(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(portion.pictures[index],
                              fit: BoxFit.cover),
                        )),
                      );
                    });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:
                    Image.network(portion.pictures[index], fit: BoxFit.cover),
              ),
            ),
          );
        },
        itemCount: portion.pictures.length,
      ),
    );
  }

  Widget onDesktopOrTablet(
    BuildContext context,
    EdgeInsets padding,
  ) {
    return SingleChildScrollView(
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(_project.description,
                textAlign: TextAlign.start, style: context.normalStyle),
            Column(children: const [
              SizedBox(height: 10),
              Divider(thickness: 1),
              SizedBox(height: 10)
            ]),
            showPortionsForWeb(context)
          ],
        ),
      ),
    );
  }

  Widget showPortionsForWeb(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var portion = _project.portions[index];
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (_project.portions.length > 1)
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
                              onPressed: () async =>
                                  await launchUrl(Uri.parse(portion.link)),
                              child: Text(
                                AppLocalizations.of(context)!.reviewApp,
                                style: context.normalStyle,
                              ),
                            ),
                          const SizedBox(height: 10),
                          if (portion.source.isNotEmpty)
                            TextButton(
                              onPressed: () async =>
                                  await launchUrl(Uri.parse(portion.source)),
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
                        showGallery(context, index),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            if (index != _project.portions.length - 1)
              Column(
                children: const [
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(height: 10),
                ],
              ),
          ],
        );
      },
      itemCount: _project.portions.length,
    );
  }
}
