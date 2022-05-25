import 'package:fluides/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'components/dock/dock.dart';
import 'components/notification/notification.dart';
import 'components/start_menu/start_menu.dart';
import 'components/window/window.dart';

class Desk extends StatefulWidget {
  const Desk({
    super.key,
    //required this.title,
  });

  //final String title;

  @override
  _Desk createState() => _Desk();
}

class _Desk extends State<Desk> {
  bool _visible = false;
  bool _visibleWindow = false;
  bool _visibleNotification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Wallpaper(),
          Column(
            children: [
              // Desktop Work Area
              Expanded(
                flex: 11,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: AnimatedOpacity(
                        // If the widget is visible, animate to 0.0 (invisible).
                        // If the widget is hidden, animate to 1.0 (fully visible).
                        opacity: _visible ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 500),
                        // The green box must be a child of the AnimatedOpacity widget.
                        child: StartMenu(),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: AnimatedOpacity(
                        // If the widget is visible, animate to 0.0 (invisible).
                        // If the widget is hidden, animate to 1.0 (fully visible).
                        opacity: _visibleWindow ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 500),
                        // The green box must be a child of the AnimatedOpacity widget.
                        child: Window(),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: AnimatedOpacity(
                        // If the widget is visible, animate to 0.0 (invisible).
                        // If the widget is hidden, animate to 1.0 (fully visible).
                        opacity: _visibleNotification ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 500),
                        // The green box must be a child of the AnimatedOpacity widget.
                        child: NotificationMenu(),
                      ),
                    ),
                  ],
                  //color: Colors.white,
                ),
              ),
              // Desktop Dock
              Expanded(
                flex: 1,
                child: Dock(
                  () {
                    setState(() {
                      _visible = !_visible;
                    });
                  },
                  () {
                    setState(() {
                      _visibleNotification = !_visibleNotification;
                    });
                  },
                  () {
                    setState(() {
                      _visibleWindow = !_visibleWindow;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Wallpaper extends StatelessWidget {
  Wallpaper({
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
