import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants.dart';

class AppListConfig extends StatelessWidget {
  const AppListConfig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(
          top: defaultPadding * 0.75,
          bottom: defaultPadding * 0.75,
          right: 1,
          left: 1,
        ),
        child: SvgPicture.asset(
          "assets/icons/menu_dashbord.svg",
          color: Colors.black38,
        ),
      ),
    );
  }
}
