import 'package:fluides/responsive.dart';
import 'package:fluides/desk/components/start_menu/components/quick_menu/quick_menu.dart';
import 'package:flutter/material.dart';

import 'package:fluides/constants.dart';
import 'components/main_menu/main_menu.dart';

class StartMenu extends StatelessWidget {
  const StartMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int searchSize = 3;
    int bottomSize = 2;
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      //padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: kLightColor,
        borderRadius: borderRadiusDefault,
      ),
      child: ClipRRect(
        borderRadius: borderRadiusDefault,
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0),
          body: SafeArea(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Menu

                Expanded(
                  flex: 2,
                  child: QuickMenu(),
                ),

                // Right Menu
                Expanded(
                  flex: 10,
                  child:
                      MainMenu(searchSize: searchSize, bottomSize: bottomSize),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
