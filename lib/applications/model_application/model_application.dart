import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:fluides/components/process_manager/process_manager.dart';
import 'package:fluides/components/process_manager/components/application_process/application_process.dart';
import 'package:fluides/components/window_manager/window_manager.dart';
import 'package:fluides/components/window_manager/application_window/application_window.dart';
import 'package:fluides/applications/components/shortcut_dock/shortcut_dock.dart';
import 'components/generic_window/generic_window.dart';

class ModelApplication extends StatelessWidget {
  const ModelApplication({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String iconPath = "assets/icons/menu_dashbord.svg";
    String name = "Application Model";
    var applicationProcess = ApplicationProcess(
      id: 0,
      name: name,
      //visible: false,
      icon: iconPath,
      dock: ShortcutDock(
        iconPath: iconPath,
        processName: name,
        processId: 0,
      ),
      //app: WindowManager(window: GenericWindow(name: name), onWindowOpened: (){}, onWindowClosed: (){}),
      window_manager: WindowManager(
        width: 6,
        height: 4,
        position_x: 0,
        position_y: 1,
        window: ApplicationWindow(name: name, page: GenericWindow(name: name)),
        onWindowOpened: () {},
        onWindowClosed: () {},
      ),
      //shortcut: Container(),
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
          iconPath,
          color: Colors.black,
        ),
        title: Text(name),
      );
    });
  }
}
