import 'package:fluides/process_manager/process_manager.dart';
import 'package:flutter/material.dart';
import 'package:fluides/desk/components/window/window.dart';
import 'package:provider/provider.dart';

class ApplicationProcess //{
    extends StatefulWidget {
  ApplicationProcess({
    //Key? key,
    required this.id,
    required this.name,
    required this.icon,
    required this.visible,
    required this.focus,
    required this.dock,
    required this.app,
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

  void animationShowWindow() {
    // print("Iniciando animação de exibição");
    print("Application Manager :: Visible window setado para VERDADEIRO");
    visibleWindow = true;
  }

  void animationHideWindow() {
    // print("Iniciando animação de ocultação");
    print("Application Manager :: Visible window setado para FALSO");
    visibleWindow = false;
  }

  void showApplication() {
    visibleWindow = true;
  }

  // void hideApplication() {
  //   visibleWindow = false;
  // }

  // final List<int> permissions;

  // final List<Widget> history;
  // void addHistoric(Widget h) {
  //   history.add(h);
  //   if (history.length > 10) {
  //     history.removeAt(0);
  //   }
  // }
  // void discardFoward(int index) {
  //   while (index >= history.length) {
  //     history.removeAt(index);
  //   }
  // }

  @override
  State<ApplicationProcess> createState() => _ApplicationProcess();
}

class _ApplicationProcess extends State<ApplicationProcess> {
  Widget selected = Container();

  @override
  Widget build(BuildContext context) {
    return Consumer<ProcessManager>(builder: (context, apps, child) {
      if (widget.visible || widget.visibleWindow)
        selected = widget.app;
      else
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
          setState(() {
            print("Application Manager :: Animação de ABERTURA encerrada");
            widget.visible = true;
          });
        },
        onWindowClosed: () {
          setState(() {
            print("Application Manager :: Animação de OCULTAÇÃO encerrada");
            widget.visible = false;
          });
        },
      );
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   if (widget.visible == false) {
  //     return Container();
  //   } else {
  //     return widget.window;
  //   }
  // }

}
