import 'package:flutter/material.dart';

import '../../../constants.dart';

class Window extends StatelessWidget {
  const Window({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadiusDefault,
      ),
    );
  }
}
