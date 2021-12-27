import 'package:flutter/material.dart';
import '../../../constants.dart';

class DockBar extends StatelessWidget {
  const DockBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: dockPadding,
        right: dockPadding,
        bottom: dockPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: borderRadiusDefault,
      ),
    );
  }
}
