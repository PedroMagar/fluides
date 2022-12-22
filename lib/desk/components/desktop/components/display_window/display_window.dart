import 'package:flutter/material.dart';

import 'package:fluides/responsive.dart';
import 'package:fluides/desk/components/notification/notification.dart';
import 'package:fluides/desk/components/start_menu/start_menu.dart';
import 'package:fluides/desk/components/base_window/base_window.dart';

class DisplayWindow extends StatelessWidget {
  const DisplayWindow({
    Key? key,
    required bool visibleWindow,
    required this.onWindowOpened,
    required this.onWindowClosed,
  })  : _visibleWindow = visibleWindow,
        super(key: key);

  final bool _visibleWindow;

  final VoidCallback onWindowOpened;
  final VoidCallback onWindowClosed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (Responsive.isLarge(context))
          Expanded(
            flex: (Responsive.tileWide(context) / 4).floor().toInt(),
            child: Container(),
          ),
        Expanded(
          flex: (Responsive.tileWide(context) / 2).floor().toInt(),
          child: AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: _visibleWindow ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            onEnd: () => _visibleWindow ? onWindowOpened() : onWindowClosed(),
            // The green box must be a child of the AnimatedOpacity widget.
            child: BaseWindow(name: "Window"),
          ),
        ),
        if (Responsive.isLarge(context))
          Expanded(
            flex: (Responsive.tileWide(context) / 4).floor().toInt(),
            child: Container(),
          ),
      ],
    );
  }
}

class DisplayStartMenu extends StatelessWidget {
  const DisplayStartMenu({
    Key? key,
    required this.startMenuSize,
    required this.visible,
    //required this.StartApp,
  }) : super(key: key);

  final int startMenuSize;
  final bool visible;
  //final VoidCallback StartApp;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: startMenuSize,
          child: AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            // The green box must be a child of the AnimatedOpacity widget.
            child: StartMenu(
                //StartApp: () {},
                ),
          ),
        ),
        if (startMenuSize < Responsive.tileWide(context))
          Expanded(
            flex: Responsive.tileWide(context) - startMenuSize,
            child: Container(),
          ),
      ],
    );
  }
}

class DisplayNotification extends StatelessWidget {
  const DisplayNotification({
    Key? key,
    required this.notificationSize,
    required bool visibleNotification,
  })  : _visibleNotification = visibleNotification,
        super(key: key);

  final int notificationSize;
  final bool _visibleNotification;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (notificationSize < Responsive.tileWide(context))
          Expanded(
            flex: Responsive.tileWide(context) - notificationSize,
            child: Container(),
          ),
        Expanded(
          flex: notificationSize,
          child: AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: _visibleNotification ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            // The green box must be a child of the AnimatedOpacity widget.
            child: NotificationMenu(),
          ),
        ),
      ],
    );
  }
}
