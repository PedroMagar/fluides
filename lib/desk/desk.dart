import 'package:fluides/process_manager/components/application/application.dart';
import 'package:flutter/material.dart';

import 'package:fluides/responsive.dart';
import 'components/desktop/components/work_area/work_area.dart';
import 'components/dock/dock.dart';
import 'components/wallpaper/wallpaper.dart';
import 'components/window/window.dart';
import 'components/application_process/application_process.dart';

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

  int nextId = 1;

  Window emptyWindow = Window(
    visibleWindow: false,
    fullscreen: false,
    position_x: 0,
    position_y: 0,
    position_z: 0,
    offset_top: 0,
    offset_bottom: 0,
    offset_left: 0,
    offset_right: 0,
    window: Container(),
    onWindowOpened: () {},
    onWindowClosed: () {},
  );

  List<Application> applicationList = [];
  List<Application> applicationRunning = [];
  List<Widget> applicationRunningWidget = [];
  List<Application> processRunning = [];
  List<Window> processList = [];
  List<Widget> processHistory = [];

  void addToDock(Widget wd) {
    applicationRunningWidget.add(wd);
  }

  void removeFromDock(int processId) {
    if (applicationRunningWidget.length > 0) {
      applicationRunningWidget.removeAt(0);
    }
  }

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
                  visibleNotification: _visibleNotification,
                  //stackProcess: processList,
                ),
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
                  applicationList: applicationList,
                  applicationRunning: applicationRunningWidget,
                  onStartSelected: () {
                    setState(() {
                      _visible = !_visible;
                    });
                  },
                  onNotificationSelected: () {
                    setState(() {
                      _visibleNotification = !_visibleNotification;
                    });
                  },
                  onWindowSelected: () {
                    setState(() {
                      _visibleWindow = !_visibleWindow;
                    });
                  },
                  //onAddToDock: (wd) => applicationRunningWidget.add(wd),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RunningProcess extends StatefulWidget {
  final List<ApplicationProcess> process;
  final ApplicationProcess onProcessStarted;
  final int processId;

  RunningProcess({
    required this.process,
    required this.onProcessStarted,
    required this.processId,
  });

  @override
  _RunningProcessState createState() => _RunningProcessState();
}

class _RunningProcessState extends State<RunningProcess> {
  @override
  Widget build(BuildContext context) {
    return Stack();
  }
}
