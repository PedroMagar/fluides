import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class DockBar extends StatelessWidget {
  const DockBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: dockPadding,
        right: dockPadding,
        bottom: dockPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: borderRadiusDefault,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
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
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 8,
            child: InkWell(
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
          ),
          Expanded(
            flex: 2,
            child: InkWell(
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
          ),
        ],
      ),
    );
  }
}
