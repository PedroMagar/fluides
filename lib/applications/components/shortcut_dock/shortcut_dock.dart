import 'package:fluides/constants.dart';
import 'package:fluides/process_manager/process_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ShortcutDock extends StatelessWidget {
  ShortcutDock({
    Key? key,
    required this.iconPath,
    required this.processName,
    required this.processId,
  }) : super(key: key);

  String iconPath;
  String processName;
  int processId;

  @override
  Widget build(BuildContext context) {
    return Consumer<ProcessManager>(builder: (context, apps, child) {
      return Expanded(
        flex: 1,
        child: InkWell(
          onTap: () => {apps.showHide(processName)},
          child: Container(
            padding: const EdgeInsets.only(
              top: defaultPadding * 0.75,
              bottom: defaultPadding * 0.75,
              right: defaultPadding * 0.75,
              left: defaultPadding * 0.75,
            ),
            child: SvgPicture.asset(
              iconPath,
              color: Colors.black38,
            ),
          ),
        ),
      );
    });
  }
}
