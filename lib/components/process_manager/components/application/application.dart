import 'package:fluides/components/window/window.dart';

class Application {
  bool visible;
  String icon;
  String name;
  Window window;

  Application({
    required this.visible,
    required this.icon,
    required this.name,
    required this.window,
  });
}
