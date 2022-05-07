import 'package:codingwithsaeed/features/site/data/models/portfolio.dart';
import 'package:codingwithsaeed/features/site/presentation/pages/responsive.dart';
import 'package:codingwithsaeed/features/site/presentation/widgets/portfolio/project/project_portions_web_widget.dart';
import 'package:codingwithsaeed/features/site/presentation/widgets/portfolio/project/project_portions_widget.dart';
import 'package:codingwithsaeed/features/site/utils/consts.dart';
import 'package:flutter/material.dart';

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
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: SingleChildScrollView(
        primary: true,
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
              ProjectPortionsWidget(portions: _project.portions)
            ],
          ),
        ),
      ),
    );
  }

  Widget onDesktopOrTablet(
    BuildContext context,
    EdgeInsets padding,
  ) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(_project.description,
                  textAlign: TextAlign.start, style: context.normalStyle),
              Column(children: const [
                SizedBox(height: 5),
                Divider(thickness: 1),
                SizedBox(height: 5)
              ]),
              ProjectPortionsWebWidget(portions: _project.portions)
            ],
          ),
        ),
      ),
    );
  }
}
