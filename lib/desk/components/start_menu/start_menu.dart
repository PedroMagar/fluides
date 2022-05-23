import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'components/app_list/app_list.dart';
import 'components/quick_menu/config_menu.dart';
import 'components/search_bar/search_bar.dart';
import 'components/quick_menu/shortcut_menu.dart';

class StartMenu extends StatelessWidget {
  const StartMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      //padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white38,
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
                  child: Container(
                    color: Colors.black12,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: new Container(
                            child: ShortcutMenu(),
                          ),
                        ),
                        Expanded(
                          flex: 1,
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
                  ),
                ),
                // Right Menu
                Expanded(
                  flex: 10,
                  child: Column(
                    children: [
                      // Search Box
                      SearchBar(),
                      // Main Menu
                      Expanded(
                        flex: 7,
                        child: SingleChildScrollView(child: AppList()),
                      ),
                      // Bottom Menu
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ListTile(
                              onTap: () {},
                              horizontalTitleGap: 0.0,
                              leading: SvgPicture.asset(
                                "assets/icons/menu_dashbord.svg",
                                color: Colors.black,
                              ),
                              title: Text("Todos os Aplicativos"),
                            ),
                          ],
                        ),
                      ),
                    ],
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
