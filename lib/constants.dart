import 'package:flutter/material.dart';

const kLightColor = Color.fromARGB(95, 215, 229, 250);
const kPrimaryColor = Color(0xFF0C4D98);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const defaultPadding = 16.0;
const dockPadding = 16.0;

const fontScale = 1.0;

const themeDefaultRadiusMain = Radius.circular(25);

const borderRadiusDefault = BorderRadius.all(Radius.circular(25));
const borderRadiusDefaultTop = BorderRadius.only(
  topLeft: themeDefaultRadiusMain,
  topRight: themeDefaultRadiusMain,
);
const borderRadiusDefaultBottom = BorderRadius.only(
  bottomLeft: themeDefaultRadiusMain,
  bottomRight: themeDefaultRadiusMain,
);
const borderRadiusDefaultLeft = BorderRadius.only(
  topLeft: themeDefaultRadiusMain,
  bottomLeft: themeDefaultRadiusMain,
);
const borderRadiusDefaultRight = BorderRadius.only(
  topRight: themeDefaultRadiusMain,
  bottomRight: themeDefaultRadiusMain,
);

const borderRadiusInput = BorderRadius.all(Radius.circular(15));
