// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:site/features/site/utils/consts.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 550;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 950 &&
      MediaQuery.of(context).size.width >= 550;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 950;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 950)
          return desktop;
        else if (constraints.maxWidth >= 550) return tablet;
        return mobile;
      },
    );
  }
}

extension BetterContext on BuildContext {
  bool get isMobile => Responsive.isMobile(this);

  bool get isTablet => Responsive.isTablet(this);

  bool get isDesktop => Responsive.isDesktop(this);

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  TextStyle get headerStyle {
    if (isMobile) return mobileTextBold;
    if (isTablet) return tabletTextBold;
    return webTextBold;
  }

  TextStyle get normalStyle {
    if (isMobile) return mobileTextNormal;
    if (isTablet) return tabletTextNormal;
    return webTextNormal;
  }

  TextStyle get smallStyle {
    if (isMobile) return mobileTextSmall;
    if (isTablet) return tabletTextSmall;
    return webTextSmall;
  }
}
