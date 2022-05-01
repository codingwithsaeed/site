import 'package:flutter/material.dart';

const gradientBox = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(255, 210, 184, 214),
        Color.fromARGB(255, 18, 1, 41),
      ]),
);

const webTextNormal = TextStyle(
  fontSize: 20,
);
const webTextBold = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const tabletTextNormal = TextStyle(
  fontSize: 17,
);
const tabletTextBold = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.bold,
);
