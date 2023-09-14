import 'package:fluides/components/process_manager/process_manager.dart';
import 'package:fluides/components/window_manager/window_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApplicationProcess extends StatefulWidget {
  ApplicationProcess({
    //Key? key,
    required this.id,
    required this.name,
    required this.icon,
    //required this.visible,
    required this.focus,
    required this.dock,
    //required this.app,
    required this.window_manager,
    //required this.shortcut,
    //this.visibleWindow = false,
    // required this.permissions,
    // required this.history,
  }); // : super(key: key);

  int id;
  WindowManager window_manager;
  String name;
  String icon;
  bool focus;
  Widget dock;
  //Widget app;
  //Widget shortcut;

  void animationShowWindow() {
    window_manager.setVisibility(true);
    print("Application Process :: " + id.toString() + " :: Visible window");
  }

  void animationHideWindow() {
    window_manager.setVisibility(false);
    print("Application Process :: " + id.toString() + " :: Invisible window");
  }

  @override
  State<ApplicationProcess> createState() => _ApplicationProcess();
}

class _ApplicationProcess extends State<ApplicationProcess> {
  Widget selected = Container();
  @override
  Widget build(BuildContext context) {
    return Consumer<ProcessManager>(builder: (context, apps, child) {
      return widget.window_manager;
    });
  }
}
