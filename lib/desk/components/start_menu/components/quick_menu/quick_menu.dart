import 'package:fluides/components/responsive.dart';
import 'package:flutter/material.dart';

import 'components/config_menu/config_menu.dart';
import 'components/shortcut_menu/shortcut_menu.dart';

class QuickMenu extends StatelessWidget {
  const QuickMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int configSize = 1;
    return Container(
      color: Colors.black12,
      child: Column(
        children: [
          // Shortcut
          Expanded(
            flex: Responsive.tileTall(context) - configSize,
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: ShortcutMenu(),
            ),
          ),
          // Config
          Expanded(
            flex: configSize,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: ConfigMenu(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
