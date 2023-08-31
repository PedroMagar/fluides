import 'package:fluides/components/window_manager/components/application_window/application_window.dart';

class ApplicationProcess {
  bool visible;
  bool fullscreen;
  int position_x;
  int position_y;
  int position_z;
  String icon;
  String name;
  ApplicationWindow window;

  ApplicationProcess({
    required this.visible,
    this.fullscreen = false,
    this.position_x = 0,
    this.position_y = 0,
    this.position_z = 0,
    required this.icon,
    required this.name,
    required this.window,
  });
}
