import 'package:fluides/responsive.dart';
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
    int startSize = 3;
    int endSize = 3;
    return Container(
      margin: const EdgeInsets.only(
        left: dockPadding,
        right: dockPadding,
        bottom: dockPadding,
      ),
      decoration: BoxDecoration(
        color: kLightColor,
        borderRadius: borderRadiusDefault,
      ),
      child: ClipRRect(
        borderRadius: borderRadiusDefault,
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0),
          body: SafeArea(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: startSize,
                  child: Row(
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
                      if (Responsive.isMedium(context))
                        Expanded(
                          flex: 2,
                          child: Container(),
                        ),
                    ],
                  ),
                ),
                if (Responsive.isSmall(context) == false)
                  Expanded(
                    flex: (Responsive.tileTall(context) * 2) -
                        (startSize + endSize),
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
                  flex: endSize,
                  child: Row(
                    children: [
                      if (Responsive.isLarge(context))
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () => onNotificationSelected(),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: defaultPadding * 0.25,
                                    bottom: defaultPadding * 0.25,
                                    right: defaultPadding * 0.25,
                                    left: defaultPadding * 0.25,
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/icons/expand_more.svg",
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
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
                                    "assets/icons/network_overlay.svg",
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: defaultPadding * 0.25,
                                    bottom: defaultPadding * 0.25,
                                    right: defaultPadding * 0.25,
                                    left: defaultPadding * 0.25,
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            "12:00",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            "30/05/2022",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
                                    left: defaultPadding * 0.25,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
