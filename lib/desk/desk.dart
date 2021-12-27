import 'package:fluides/constants.dart';
import 'package:flutter/material.dart';

import 'components/dock/dock.dart';
import 'components/notification/notification.dart';
import 'components/start_menu/start_menu.dart';

class Desk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Wallpaper(),
          Column(
            children: [
              Expanded(
                flex: 11,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: StartMenu(),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Container(
                            //color: Colors.green[100],
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: NotificationMenu(),
                    ),
                  ],
                  //color: Colors.white,
                ),
              ),
              //SizedBox(height: defaultPadding),
              Expanded(
                flex: 1,
                child: DockBar(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Wallpaper extends StatelessWidget {
  const Wallpaper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/light-gradient.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(),
    );
  }
}
