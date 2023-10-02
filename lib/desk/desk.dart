import 'package:flutter/material.dart';

import 'package:fluides/components/responsive.dart';
import 'components/desktop/components/work_area/work_area.dart';
import 'components/dock/dock.dart';
import 'components/wallpaper/wallpaper.dart';

class Desk extends StatefulWidget {
  const Desk({
    super.key,
  });

  @override
  _Desk createState() => _Desk();
}

class _Desk extends State<Desk> {
  bool _visible = false;
  bool _visibleNotification = false;

  @override
  Widget build(BuildContext context) {
    int dockSize = 1;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          const Wallpaper(),
          // Desktop
          SafeArea(
            child: Column(
              children: [
                // Desktop Work Area
                Expanded(
                  flex: (Responsive.tileTall(context) * 2) - dockSize,
                  child: WorkArea(
                    visible: _visible,
                    visibleNotification: _visibleNotification,
                  ),
                ),
                Expanded(
                  flex: dockSize,
                  child: Container(),
                ),
              ],
            ),
          ),
          // Desktop Dock
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: (Responsive.tileTall(context) * 2) - dockSize,
                  child: Container(),
                ),
                Expanded(
                  flex: dockSize,
                  child: Dock(
                    onStartSelected: () {
                      setState(() {
                        _visible = !_visible;
                      });
                    },
                    onNotificationSelected: () {
                      setState(() {
                        _visibleNotification = !_visibleNotification;
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
