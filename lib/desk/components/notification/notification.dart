import 'package:flutter/material.dart';
import 'package:fluides/components/constants.dart';
import 'components/notification_list/notification_list.dart';
import 'components/notification_top_menu/notification_top_menu.dart';

class NotificationMenu extends StatelessWidget {
  const NotificationMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: kLightColor,
        borderRadius: borderRadiusDefault,
      ),
      child: const ClipRRect(
        borderRadius: borderRadiusDefault,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: NotificationTopMenu(),
            ),
            Expanded(
              flex: 11,
              child: NotificationList(),
            ),
          ],
        ),
      ),
    );
  }
}
