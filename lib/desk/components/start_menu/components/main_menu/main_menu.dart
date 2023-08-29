import 'package:fluides/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fluides/constants.dart';
import 'components/menu_search_bar/menu_search_bar.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    Key? key,
    required this.searchSize,
    required this.bottomSize,
    required this.appList,
    //required this.StartApp,
  }) : super(key: key);

  final int searchSize;
  final int bottomSize;
  final Widget appList;
  //final VoidCallback StartApp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Box
        Expanded(
          flex: searchSize,
          child: const MenuSearchBar(),
        ),
        // Main Menu
        Expanded(
          flex: (Responsive.tileTall(context) * 4) - (searchSize + bottomSize),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: appList,
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
                onTap: () {
                  //StartApp();
                },
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
