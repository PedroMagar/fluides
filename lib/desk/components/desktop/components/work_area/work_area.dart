import 'package:fluides/process_manager/process_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../display_window/display_window.dart';

class WorkArea extends StatefulWidget {
  WorkArea({
    Key? key,
    required bool visible,
    // required bool visibleWindow,
    required bool visibleNotification,
  })  : _visible = visible,
        // _visibleWindow = visibleWindow,
        _visibleNotification = visibleNotification,
        super(key: key);

  final bool _visible;
  // final bool _visibleWindow;
  final bool _visibleNotification;

  final List<Widget> stackProcess = [];

  void addProcess(DisplayWindow newProcess) {
    stackProcess.add(newProcess);
  }

  @override
  State<WorkArea> createState() => _WorkAreaState();
}

class _WorkAreaState extends State<WorkArea> {
  @override
  Widget build(BuildContext context) {
    int startMenuSize = 3;
    int notificationSize = 3;

    /*widget.stackProcess.add(
      DisplayWindow(
        visibleWindow: widget._visibleWindow,
        onWindowClosed: () {},
        onWindowOpened: () {},
      ),
    );*/

    widget.stackProcess.add(
      DisplayNotification(
        notificationSize: notificationSize,
        visibleNotification: widget._visibleNotification,
      ),
    );

    widget.stackProcess.add(
      DisplayStartMenu(
        startMenuSize: startMenuSize,
        visible: widget._visible,
        /*StartApp: () => widget.stackProcess.add(
          DisplayWindow(
            visibleWindow: true,
            onWindowOpened: () {},
            onWindowClosed: () {},
          ),
        ),*/
      ),
    );

    return Consumer<ProcessManager>(builder: (context, apps, child) {
      return Stack(
        children: apps.desktop(widget.stackProcess),
      );
    });

    /*return Consumer<ProcessManager>(builder: (context, apps, child) {
      return apps.desktop2();
    });*/
  }
}
