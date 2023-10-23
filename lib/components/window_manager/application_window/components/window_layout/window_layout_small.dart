import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluides/components/constants.dart';

class WindowLayoutSmall extends StatelessWidget {
  const WindowLayoutSmall({
    super.key,
    required this.page,
    required this.name,
    required this.onMenuPressed,
  });

  final Widget page;
  final String name;

  final VoidCallback onMenuPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: page,
        ),
        Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                    //color: Colors.pink,
                    ),
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor:
                      const Color.fromARGB(0, 255, 255, 255).withOpacity(0),
                  body: SafeArea(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: onMenuPressed,
                            child: SvgPicture.asset(
                              "assets/icons/menu_setting.svg",
                              color: kPrimaryColor,
                              //fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16 * fontScale,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/icons/x_circle.svg",
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 18,
              child: Container(),
            ),
          ],
        ),
      ],
    );
  }
}
