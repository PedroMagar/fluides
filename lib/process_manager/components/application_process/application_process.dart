import 'package:flutter/material.dart';
import 'package:fluides/desk/components/window/window.dart';

class ApplicationProcess {
  //extends StatefulWidget {
  ApplicationProcess({
    //Key? key,
    required this.id,
    required this.name,
    required this.icon,
    required this.window,
    required this.visible,
    required this.focus,
    required this.dock,
    required this.app,
    // required this.permissions,
    // required this.history,
  }); // : super(key: key);

  int id;
  String name;
  String icon;
  Window window;
  bool visible;
  bool focus;
  Widget dock;
  Widget app;

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

  // @override
  // State<ApplicationProcess> createState() => _ApplicationProcess();
}

// class _ApplicationProcess extends State<ApplicationProcess> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
