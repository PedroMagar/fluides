import 'package:fluides/process_manager/process_manager.dart';
import 'package:flutter/material.dart';
import 'package:fluides/desk/components/window/window.dart';
import 'package:provider/provider.dart';

class ApplicationProcess extends StatefulWidget {
  ApplicationProcess({
    //Key? key,
    required this.id,
    required this.name,
    required this.icon,
    required this.visible,
    required this.focus,
    required this.dock,
    required this.app,
    //required this.shortcut,
    this.visibleWindow = false,
    // required this.permissions,
    // required this.history,
  }); // : super(key: key);

  int id;
  String name;
  String icon;
  bool visible;
  bool visibleWindow;
  bool focus;
  Widget dock;
  Widget app;
  //Widget shortcut;

  void animationShowWindow() {
    visibleWindow = true;
    // print("Application Process :: " + id.toString() + " :: Janela visível ");
  }

  void animationHideWindow() {
    visibleWindow = false;
    // print("Application Process :: " + id.toString() + " :: Janela invisível");
  }

  @override
  State<ApplicationProcess> createState() => _ApplicationProcess();
}

class _ApplicationProcess extends State<ApplicationProcess> {
  Widget selected = Container();

  @override
  Widget build(BuildContext context) {
    return Consumer<ProcessManager>(builder: (context, apps, child) {
      if (widget.visible || widget.visibleWindow) {
        selected = widget.app;
        //print("Application Process :: Janela visivel");
      } else
        selected = Container();

      return Window(
        visibleWindow: widget.visibleWindow,
        fullscreen: false,
        position_x: 0,
        position_y: 0,
        position_z: 5,
        offset_top: 0,
        offset_bottom: 0,
        offset_left: 1,
        offset_right: 1,
        window: selected,
        onWindowOpened: () {
          widget.visible = true;
          //widget.visibleWindow = true;
          //print("INICIADO COM SUCESSO");
          setState(() {});
        },
        onWindowClosed: () {
          widget.visible = false;
          //widget.visibleWindow = false;
          //print("ENCERRADO COM SUCESSO");
          setState(() {});
        },
      );
    });
  }
}
