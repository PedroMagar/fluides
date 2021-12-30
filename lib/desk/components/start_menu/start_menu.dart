import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'components/app_list.dart';
import 'components/app_list_config.dart';
import 'components/config_menu.dart';
import 'components/search_field.dart';
import 'components/shortcut_menu.dart';

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
        child: Row(
          mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black12,
                child: Column(
                  children: [
                    ShortcutMenu(),
                    ConfigMenu(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: defaultPadding * 0.75,
                            bottom: defaultPadding * 0.75,
                            right: 1,
                            left: defaultPadding * 0.75,
                          ),
                          child: SearchField(),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: AppListConfig(),
                      ),
                    ],
                  ),
                  AppList(),
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
    );
  }
}
