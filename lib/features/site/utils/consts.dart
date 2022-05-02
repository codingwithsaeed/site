import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const backgroundColor = Color.fromARGB(255, 232, 224, 234);
const primaryColor = Color.fromARGB(255, 31, 1, 36);

const faGradientBox = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [backgroundColor, primaryColor]),
);
const enGradientBox = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [backgroundColor, primaryColor]),
);
const mobileGradientBox = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [primaryColor, backgroundColor]),
);

const webTextSmall = TextStyle(fontSize: 18);
const webTextNormal = TextStyle(fontSize: 20);
const webTextBold = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

const tabletTextSmall = TextStyle(fontSize: 16);
const tabletTextNormal = TextStyle(fontSize: 17);
const tabletTextBold = TextStyle(fontSize: 17, fontWeight: FontWeight.bold);

const mobileTextSmall = TextStyle(fontSize: 14);
const mobileTextNormal = TextStyle(fontSize: 15);
const mobileTextBold = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

const roundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
);

final scrollBehavior = const MaterialScrollBehavior().copyWith(
  dragDevices: {
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.touch,
    PointerDeviceKind.unknown
  },
);

const localizationsDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
