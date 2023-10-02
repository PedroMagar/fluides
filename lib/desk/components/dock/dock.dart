import 'package:fluides/components/process_manager/process_manager.dart';
import 'package:fluides/components/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:fluides/components/constants.dart';

class Dock extends StatefulWidget {
  const Dock({
    Key? key,
    // required this.applicationList,
    // required this.applicationRunning,
    required this.onStartSelected,
    required this.onNotificationSelected,
    // required this.onWindowSelected,
    // required this.onAddToDock,
  }) : super(key: key);

  // List<Application> applicationList;
  // List<Widget> applicationRunning;

  final VoidCallback onStartSelected;
  final VoidCallback onNotificationSelected;
  // final VoidCallback onWindowSelected;

  /*final Function(Widget) onAddToDock;


  void addToDock() {
    applicationRunning.add(
      Expanded(
        flex: 1,
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
    );
  }

  void removeFromDock(int processId) {
    if (applicationRunning.length > 0) {
      applicationRunning.removeAt(0);
    }
  }*/

  @override
  State<Dock> createState() => _DockState();
}

class _DockState extends State<Dock> {
  @override
  Widget build(BuildContext context) {
    /*bool start_menu = true;
    bool applications = true;
    bool notifications = true;

    int start_menu_flex = 1;
    int applications_flex = 1;
    int notifications_flex = 1;

    if (Responsive.isLarge(context)) {}*/
    int applicationRunningOffset = 4;
    //    4 - (widget.applicationRunning.length / 2).floor().toInt();

    if (applicationRunningOffset < 0) {
      applicationRunningOffset = 0;
    }

    int applicationRunningSize = 10 - (applicationRunningOffset * 2);

    int startSize = 3;
    int endSize = 3;
    if (Responsive.isSmall(context) == false) {
      startSize = 2;
      endSize = 2;
    }
    return Consumer<ProcessManager>(builder: (context, apps, child) {
      return Container(
        margin: const EdgeInsets.only(
          left: dockPadding,
          right: dockPadding,
          bottom: dockPadding,
        ),
        decoration: const BoxDecoration(
          color: kLightColor,
          borderRadius: borderRadiusDefault,
        ),
        child: ClipRRect(
          borderRadius: borderRadiusDefault,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white.withOpacity(0),
            body: SafeArea(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    // Start Menu
                    flex: startSize,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () => {
                              widget.onStartSelected(),
                              //widget.addToDock(),
                              /*widget.onAddToDock(
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () => widget.onWindowSelected(),
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
                            ),*/
                            },
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
                      // Running Applications
                      flex: (Responsive.tileTall(context) * 2) -
                          (startSize + endSize),
                      child: Row(
                        children: [
                          Expanded(
                            flex: applicationRunningOffset,
                            child: Container(),
                          ),
                          Expanded(
                            flex: applicationRunningSize,
                            child: Row(
                              children: apps.runningOnDock(),
                            ),
                          ),
                          Expanded(
                            flex: applicationRunningOffset,
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  Expanded(
                    // Notification
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
                                  onTap: () => {
                                    widget.onNotificationSelected(),
                                    // widget.removeFromDock(0),
                                  },
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
                                  onTap: () => widget.onNotificationSelected(),
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
                                            child: const Text(
                                              "12:00",
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: const Text(
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
                                  onTap: () => widget.onNotificationSelected(),
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
    });
  }
}
