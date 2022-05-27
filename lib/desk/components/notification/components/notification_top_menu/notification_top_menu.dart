import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants.dart';

class NotificationTopMenu extends StatelessWidget {
  const NotificationTopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                //margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: themeDefaultRadiusMain,
                  ),
                  //color: Colors.white,
                  //shape: BoxShape.circle,
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ListTile(
                  onTap: () {},
                  horizontalTitleGap: 0.0,
                  title: SvgPicture.asset(
                    "assets/icons/menu_notification.svg",
                    color: kPrimaryColor,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                "Central de Notificações",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16 * fontScale,
                  color: kPrimaryColor,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.pink,
                  borderRadius: BorderRadius.only(
                    topRight: themeDefaultRadiusMain,
                  ),
                ),
                child: ListTile(
                  onTap: () {},
                  horizontalTitleGap: 0.0,
                  title: SvgPicture.asset(
                    "assets/icons/notification_clean.svg",
                    color: kPrimaryColor,
                    width: 25 * fontScale,
                    height: 25 * fontScale,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
