import 'package:flutter/material.dart';

import 'package:fluides/responsive.dart';
import 'components/dock/dock.dart';
import 'components/notification/notification.dart';
import 'components/start_menu/start_menu.dart';
import 'components/wallpaper/wallpaper.dart';
import 'components/window/window.dart';

class Desk extends StatefulWidget {
  const Desk({
    super.key,
    //required this.title,
  });

  //final String title;

  @override
  _Desk createState() => _Desk();
}

class _Desk extends State<Desk> {
  bool _visible = false;
  bool _visibleWindow = false;
  bool _visibleNotification = false;

  @override
  Widget build(BuildContext context) {
    int dockSize = 1;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Wallpaper(),
          Column(
            children: [
              // Desktop Work Area
              Expanded(
                flex: (Responsive.tileTall(context) * 2) - dockSize,
                child: WorkArea(
                    visible: _visible,
                    visibleWindow: _visibleWindow,
                    visibleNotification: _visibleNotification),
              ),
              Expanded(
                flex: dockSize,
                child: Container(),
              ),
            ],
          ),
          // Desktop Dock
          Column(
            children: [
              Expanded(
                flex: (Responsive.tileTall(context) * 2) - dockSize,
                child: Container(),
              ),
              Expanded(
                flex: dockSize,
                child: Dock(
                  () {
                    setState(() {
                      _visible = !_visible;
                    });
                  },
                  () {
                    setState(() {
                      _visibleNotification = !_visibleNotification;
                    });
                  },
                  () {
                    setState(() {
                      _visibleWindow = !_visibleWindow;
                    });
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class WorkArea extends StatelessWidget {
  WorkArea({
    Key? key,
    required bool visible,
    required bool visibleWindow,
    required bool visibleNotification,
  })  : _visible = visible,
        _visibleWindow = visibleWindow,
        _visibleNotification = visibleNotification,
        super(key: key);

  final bool _visible;
  final bool _visibleWindow;
  final bool _visibleNotification;

  List<Widget> stackProcess = [];

  @override
  Widget build(BuildContext context) {
    int startMenuSize = 3;
    int notificationSize = 3;
    stackProcess.add(
      DisplayWindow(visibleWindow: _visibleWindow),
    );
    stackProcess.add(
      DisplayNotification(
          notificationSize: notificationSize,
          visibleNotification: _visibleNotification),
    );
    stackProcess.add(
      DisplayStartMenu(startMenuSize: startMenuSize, visible: _visible),
    );
    return Stack(
      children: stackProcess,
    );
  }
}

class DisplayStartMenu extends StatelessWidget {
  const DisplayStartMenu({
    Key? key,
    required this.startMenuSize,
    required bool visible,
  })  : _visible = visible,
        super(key: key);

  final int startMenuSize;
  final bool _visible;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: startMenuSize,
          child: AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            // The green box must be a child of the AnimatedOpacity widget.
            child: StartMenu(),
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

class DisplayWindow extends StatelessWidget {
  const DisplayWindow({
    Key? key,
    required bool visibleWindow,
  })  : _visibleWindow = visibleWindow,
        super(key: key);

  final bool _visibleWindow;

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
            // The green box must be a child of the AnimatedOpacity widget.
            child: Window(),
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
