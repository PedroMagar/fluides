// ignore_for_file: non_constant_identifier_names

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
    int config_size = 1;
    return Container(
      color: Colors.black12,
      child: Column(
        children: [
          // Shortcut
          Expanded(
            flex: Responsive.tileTall(context) - config_size,
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: const ShortcutMenu(),
            ),
          ),
          // Config
          Expanded(
            flex: config_size,
            child: const Column(
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
