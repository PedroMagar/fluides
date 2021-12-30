import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constants.dart';

class ShortcutMenu extends StatelessWidget {
  const ShortcutMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.only(
              top: defaultPadding * 0.75,
              bottom: defaultPadding * 0.75,
              right: defaultPadding * 0.75,
              left: defaultPadding * 0.75,
            ),
            child: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black38,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.only(
              top: defaultPadding * 0.75,
              bottom: defaultPadding * 0.75,
              right: defaultPadding * 0.75,
              left: defaultPadding * 0.75,
            ),
            child: SvgPicture.asset(
              "assets/icons/documents.svg",
              color: Colors.black38,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.only(
              top: defaultPadding * 0.75,
              bottom: defaultPadding * 0.75,
              right: defaultPadding * 0.75,
              left: defaultPadding * 0.75,
            ),
            child: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black38,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.only(
              top: defaultPadding * 0.75,
              bottom: defaultPadding * 0.75,
              right: defaultPadding * 0.75,
              left: defaultPadding * 0.75,
            ),
            child: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black38,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.only(
              top: defaultPadding * 0.75,
              bottom: defaultPadding * 0.75,
              right: defaultPadding * 0.75,
              left: defaultPadding * 0.75,
            ),
            child: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black38,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.only(
              top: defaultPadding * 0.75,
              bottom: defaultPadding * 0.75,
              right: defaultPadding * 0.75,
              left: defaultPadding * 0.75,
            ),
            child: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black38,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.only(
              top: defaultPadding * 0.75,
              bottom: defaultPadding * 0.75,
              right: defaultPadding * 0.75,
              left: defaultPadding * 0.75,
            ),
            child: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black38,
            ),
          ),
        ),
      ],
    );
  }
}
