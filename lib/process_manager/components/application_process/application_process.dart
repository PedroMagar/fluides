import 'package:flutter/material.dart';
import 'package:fluides/desk/components/window/window.dart';

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
  }) : this.window = Window(
          visibleWindow: visibleWindow,
          fullscreen: false,
          position_x: 0,
          position_y: 0,
          position_z: 5,
          offset_top: 0,
          offset_bottom: 0,
          offset_left: 1,
          offset_right: 1,
          window: app,
          onWindowOpened: () {},
          onWindowClosed: () {},
        ); // : super(key: key);

  int id;
  String name;
  String icon;
  Window window;
  bool visible;
  bool visibleWindow;
  bool focus;
  Widget dock;
  Widget app;

  void showWindowAnimation() {
    print("Iniciando animação de exibição");
    visibleWindow = true;
  }

  void hideWindowAnimation() {
    print("Iniciando animação de ocultação");
    visibleWindow = false;
  }

  // void showApplication() {
  //   visibleWindow = true;
  // }

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
  bool showTrasaction = true;
  bool showing = true;

  @override
  Widget build(BuildContext context) {
    return widget.window;
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
