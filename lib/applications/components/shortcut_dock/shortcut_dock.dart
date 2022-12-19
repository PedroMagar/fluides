import 'package:fluides/constants.dart';
import 'package:fluides/desk/components/base_window/base_window.dart';
import 'package:fluides/desk/components/window/window.dart';
import 'package:fluides/process_manager/components/application_process/application_process.dart';
import 'package:fluides/process_manager/process_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ShortcutDock extends StatelessWidget {
  ShortcutDock({
    Key? key,
    required this.icon_path,
    required this.process_name,
    required this.process_id,
  }) : super(key: key);

  String icon_path;
  String process_name;
  int process_id;

  @override
  Widget build(BuildContext context) {
    return Consumer<ProcessManager>(builder: (context, apps, child) {
      return Expanded(
        flex: 1,
        child: InkWell(
          onTap: () => {apps.showHide(process_name)},
          child: Container(
            padding: const EdgeInsets.only(
              top: defaultPadding * 0.75,
              bottom: defaultPadding * 0.75,
              right: defaultPadding * 0.75,
              left: defaultPadding * 0.75,
            ),
            child: SvgPicture.asset(
              icon_path,
              color: Colors.black38,
            ),
          ),
        ),
      );
    });
  }
}
