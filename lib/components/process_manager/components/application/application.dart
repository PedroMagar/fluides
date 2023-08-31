import 'package:fluides/components/window_manager/window_manager.dart';

class Application {
  bool visible;
  String icon;
  String name;
  WindowManager window;

  Application({
    required this.visible,
    required this.icon,
    required this.name,
    required this.window,
  });
}
