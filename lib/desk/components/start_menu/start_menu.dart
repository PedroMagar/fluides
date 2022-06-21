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
                if (MediaQuery.of(context).size.width > 1250)
                  Expanded(
                    flex: 2,
                    child: LeftMenu(),
                  ),
                if (MediaQuery.of(context).size.width <= 1250)
                  Expanded(
                    flex: 4,
                    child: LeftMenu(),
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
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          child: AppList(),
                        ),
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

class LeftMenu extends StatelessWidget {
  const LeftMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        children: [
          // Shortcut
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: ShortcutMenu(),
            ),
          ),
          // Config
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
    );
  }
}
