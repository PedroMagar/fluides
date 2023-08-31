import 'package:fluides/applications/components/shortcut_dock/shortcut_dock.dart';
import 'package:fluides/components/base_window/base_window.dart';
import 'package:fluides/components/process_manager/components/application_process/application_process.dart';
import 'package:fluides/components/process_manager/process_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

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
      visible: true,
      icon: iconPath,
      dock: ShortcutDock(
        iconPath: iconPath,
        processName: name,
        processId: 0,
      ),
      app: BaseWindow(name: name),
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
