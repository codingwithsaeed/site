// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

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
}