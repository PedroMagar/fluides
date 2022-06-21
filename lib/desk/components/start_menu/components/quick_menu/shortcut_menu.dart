import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShortcutMenu extends StatelessWidget {
  const ShortcutMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          title: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black38,
          ),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          title: SvgPicture.asset(
            "assets/icons/documents.svg",
            color: Colors.black38,
          ),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          title: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black38,
          ),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          title: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black38,
          ),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          title: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black38,
          ),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          title: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black38,
          ),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          title: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black38,
          ),
        ),
      ],
    );
  }
}
