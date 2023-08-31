import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluides/components/constants.dart';

class GenericWindow extends StatelessWidget {
  GenericWindow({
    required this.name,
    Key? key,
  }) : super(key: key);
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadiusDefault,
      ),
      child: ClipRRect(
        borderRadius: borderRadiusDefault,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white.withOpacity(0),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        //color: Colors.pink,
                        ),
                    child: Scaffold(
                      resizeToAvoidBottomInset: false,
                      backgroundColor: Colors.white.withOpacity(0),
                      body: SafeArea(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: InkWell(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/icons/menu_setting.svg",
                                    color: kPrimaryColor,
                                    //fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Text(
                                name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
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
                  flex: 19,
                  child: Container(
                      //decoration: BoxDecoration(color: Colors.red),
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
