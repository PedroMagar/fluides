import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class Dock extends StatelessWidget {
  /*const Dock({
    Key? key,
  }) : super(key: key);*/
  //final bool startSelected;
  final VoidCallback onStartSelected;
  final VoidCallback onNotificationSelected;
  final VoidCallback onWindowSelected;

  Dock(
    //@required this.startSelected,
    this.onStartSelected,
    this.onNotificationSelected,
    this.onWindowSelected,
  );

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
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0),
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => onStartSelected(),
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: defaultPadding * 0.75,
                      bottom: defaultPadding * 0.75,
                      right: defaultPadding * 0.75,
                      left: defaultPadding * 0.75,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/start_512x512.svg",
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 6,
                child: InkWell(
                  onTap: () => onWindowSelected(),
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: defaultPadding * 0.75,
                      bottom: defaultPadding * 0.75,
                      right: defaultPadding * 0.75,
                      left: defaultPadding * 0.75,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/documents.svg",
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () => onNotificationSelected(),
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: defaultPadding * 0.75,
                      bottom: defaultPadding * 0.75,
                      right: defaultPadding * 0.75,
                      left: defaultPadding * 0.75,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/menu_notification.svg",
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
