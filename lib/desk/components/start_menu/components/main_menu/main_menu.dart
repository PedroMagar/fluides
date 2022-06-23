import 'package:fluides/responsive.dart';
import 'package:fluides/desk/components/start_menu/components/quick_menu/quick_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fluides/constants.dart';
import 'components/app_list/app_list.dart';
import 'components/search_bar/search_bar.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    Key? key,
    required this.searchSize,
    required this.bottomSize,
  }) : super(key: key);

  final int searchSize;
  final int bottomSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Box
        Expanded(
          flex: searchSize,
          child: const SearchBar(),
        ),
        // Main Menu
        Expanded(
          flex: (Responsive.tileTall(context) * 4) - (searchSize + bottomSize),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: const AppList(),
          ),
        ),
        // Bottom Menu
        Expanded(
          flex: bottomSize,
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
    );
  }
}
