import 'package:fluides/applications/components/shortcut_dock/shortcut_dock.dart';
import 'package:fluides/constants.dart';
import 'package:fluides/desk/components/base_window/base_window.dart';
import 'package:fluides/desk/components/window/window.dart';
import 'package:fluides/process_manager/components/application_process/application_process.dart';
import 'package:fluides/process_manager/process_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ModelApplication extends StatelessWidget {
  const ModelApplication({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String icon_path = "assets/icons/menu_dashbord.svg";
    String name = "Application Model";
    var applicationProcess = ApplicationProcess(
      id: 0,
      name: name,
      visible: true,
      icon: icon_path,
      window: Window(
        visibleWindow: true,
        fullscreen: false,
        position_x: 0,
        position_y: 0,
        position_z: 5,
        offset_top: 0,
        offset_bottom: 0,
        offset_left: 1,
        offset_right: 1,
        window: BaseWindow(name: name),
        onWindowOpened: () {},
        onWindowClosed: () {},
      ),
      dock: ShortcutDock(
        icon_path: icon_path,
        process_name: name,
        process_id: 0,
      ),
      app: BaseWindow(name: name),
      focus: true,
    );

    return Consumer<ProcessManager>(builder: (context, apps, child) {
      return ListTile(
        onTap: () {
          apps.start(
            applicationProcess,
          );
        },
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          icon_path,
          color: Colors.black,
        ),
        title: Text(name),
      );
    });
  }
}
