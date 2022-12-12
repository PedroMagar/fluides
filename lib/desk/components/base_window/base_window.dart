import 'package:flutter/material.dart';

import '../../../constants.dart';

class BaseWindow extends StatelessWidget {
  const BaseWindow({Key? key}) : super(key: key);

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
