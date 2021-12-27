import 'package:flutter/material.dart';

import '../../../constants.dart';

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
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black12,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                  //color: Colors.white38,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
