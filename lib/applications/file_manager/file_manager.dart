import 'package:fluides/applications/components/shortcut_dock/shortcut_dock.dart';
import 'package:fluides/components/process_manager/components/application_process/application_process.dart';
import 'package:fluides/components/process_manager/process_manager.dart';
import 'package:fluides/components/window_manager/window_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import './components/generic_window/generic_window.dart';

class FileManager extends StatelessWidget {
  const FileManager({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String iconPath = "assets/icons/documents.svg";
    String name = "File Manager";
    var applicationProcess = ApplicationProcess(
      id: 0,
      name: name,
      //visible: true,
      icon: iconPath,
      dock: ShortcutDock(
        iconPath: iconPath,
        processName: name,
        processId: 0,
      ),
      //app: WindowManager(window: GenericWindow(name: name)),
      window_manager: WindowManager(
        width: 6,
        height: 4,
        position_x: 0,
        position_y: 0,
        window: GenericWindow(name: name),
        onWindowOpened: () {},
        onWindowClosed: () {},
      ),
      focus: true,
      //shortcut: Container(),
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
