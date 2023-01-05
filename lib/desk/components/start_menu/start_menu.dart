import 'package:flutter/material.dart';

import 'package:fluides/responsive.dart';
import 'package:fluides/constants.dart';

import 'package:fluides/desk/components/start_menu/components/quick_menu/quick_menu.dart';

import 'components/main_menu/components/app_list/app_list.dart';
import 'components/main_menu/main_menu.dart';

class StartMenu extends StatefulWidget {
  StartMenu({
    //required this.StartApp,
    Key? key,
  }) : super(key: key);

  static const List<Widget> menu_quick = [];
  static const AppList menu_app = AppList();

  //final Function(int) StartApp;
  //final VoidCallback StartApp;

  @override
  State<StatefulWidget> createState() => _StartMenuState();
}

class _StartMenuState extends State<StartMenu> {
  @override
  Widget build(BuildContext context) {
    int searchSize = 4;
    int bottomSize = 3;
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
          resizeToAvoidBottomInset: false,
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
                  child: MainMenu(
                    searchSize: searchSize,
                    bottomSize: bottomSize,
                    appList: AppList(),
                    //StartApp: widget.StartApp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
