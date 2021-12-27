import 'package:flutter/material.dart';
import '../../../constants.dart';

class NotificationMenu extends StatelessWidget {
  const NotificationMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: borderRadiusDefault,
      ),
    );
  }
}
