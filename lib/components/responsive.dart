import 'package:fluides/components/constants.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget small;
  final Widget medium;
  final Widget large;
  final Widget wide;
  final Widget tall;

  const Responsive({
    Key? key,
    required this.small,
    required this.medium,
    required this.large,
    required this.wide,
    required this.tall,
  }) : super(key: key);

  // This isMobile, isTablet, isDesktop help us later
  static bool isSmall(BuildContext context) =>
      (MediaQuery.of(context).size.width / tileSize).floor().toInt() < 4;

  static bool isMedium(BuildContext context) =>
      (MediaQuery.of(context).size.width / tileSize).floor().toInt() < 9 &&
      (MediaQuery.of(context).size.width / tileSize).floor().toInt() >= 4;

  static bool isLarge(BuildContext context) =>
      (MediaQuery.of(context).size.width / tileSize).floor().toInt() >= 9;

  static bool isWide(BuildContext context) =>
      MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;

  static bool isTall(BuildContext context) =>
      MediaQuery.of(context).size.width <= MediaQuery.of(context).size.height;

  static int tileWide(BuildContext context) =>
      (MediaQuery.of(context).size.width / tileSize).floor().toInt();

  static int tileTall(BuildContext context) =>
      (MediaQuery.of(context).size.height / tileSize).floor().toInt();

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 1100) {
      return large;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= 850 && medium != null) {
      return medium;
    }
    // Or less then that we called it mobile
    else {
      return small;
    }
  }
}
