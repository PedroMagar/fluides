import 'package:flutter/material.dart';
import '../../../constants.dart';
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
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: borderRadiusDefault,
      ),
      child: ClipRRect(
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
