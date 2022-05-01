import 'package:flutter/material.dart';

const gradientBox = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(255, 232, 224, 234),
        Color.fromARGB(255, 18, 1, 41),
      ]),
);

const webTextSmall = TextStyle(
  fontSize: 18,
);

const webTextNormal = TextStyle(
  fontSize: 20,
);
const webTextBold = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const tabletTextSmall = TextStyle(
  fontSize: 16,
);
const tabletTextNormal = TextStyle(
  fontSize: 17,
);
const tabletTextBold = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.bold,
);
const backgroundColor = Color.fromARGB(255, 232, 224, 234);
const primaryColor = Color.fromARGB(255, 18, 1, 41);

const mobileTextSmall = TextStyle(
  fontSize: 14,
);
const mobileTextNormal = TextStyle(
  fontSize: 15,
);
const mobileTextBold = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

const roundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(30),
    bottomRight: Radius.circular(30),
  ),
);
