import 'package:flutter/material.dart';

import 'package:fluides/components/responsive.dart';
import 'package:fluides/desk/components/notification/notification.dart';
import 'package:fluides/desk/components/start_menu/start_menu.dart';

class WindowManager extends StatefulWidget {
  WindowManager({
    Key? key,
    bool visibility = false,
    bool visible = false,
    bool fullscreen = false,
    int width = 1,
    int height = 1,
    int position_x = 0,
    int position_y = 0,
    int position_z = 0,
    int offset_top = 0,
    int offset_bottom = 0,
    int offset_left = 0,
    int offset_right = 0,
    required Widget window,
    required this.onWindowOpened,
    required this.onWindowClosed,
  })  : _visibility = visibility,
        _visible = visible,
        _fullscreen = fullscreen,
        _width = width,
        _height = height,
        _position_x = position_x,
        _position_y = position_y,
        _position_z = position_z,
        _offset_top = offset_top,
        _offset_bottom = offset_bottom,
        _offset_left = offset_left,
        _offset_right = offset_right,
        _window = window,
        super(key: key);

  bool _visibility;
  bool _visible;
  bool _fullscreen;
  int _width;
  int _height;
  int _position_x;
  int _position_y;
  int _position_z;
  int _offset_top;
  int _offset_bottom;
  int _offset_left;
  int _offset_right;

  Widget _window;

  final VoidCallback onWindowOpened;
  final VoidCallback onWindowClosed;

  @override
  State<WindowManager> createState() => _WindowManagerState();

  void setVisibility(bool visible) {
    _visibility = visible;
  }

  bool getVisibility() {
    return _visibility;
  }

  void setSize(int size_x, int size_y) {}

  void setPosition([int? position_x, int? position_y]) {
    if (position_x != null) {
      _position_x = position_x;
    }
    if (position_y != null) {
      _position_y = position_y;
    }
  }

  void setLayer(int layer) {
    _position_z;
  }

  void setOffset(
      [int? offset_top,
      int? offset_bottom,
      int? offset_left,
      int? offset_right]) {
    if (offset_top != null) {
      _offset_top = offset_top;
    }
    if (offset_bottom != null) {
      _offset_bottom = offset_bottom;
    }
    if (offset_left != null) {
      _offset_left = offset_left;
    }
    if (offset_right != null) {
      _offset_right = offset_right;
    }
  }
}

class _WindowManagerState extends State<WindowManager> {
  @override
  Widget build(BuildContext context) {
    int fill_row = 0;
    int fill_column = 0;

    if (Responsive.tileWide(context) - widget._position_x - widget._width >=
        0) {
      fill_row =
          Responsive.tileWide(context) - widget._position_x - widget._width;
    }

    // as
    if (Responsive.tileTall(context) - widget._position_y - widget._height >=
        0) {
      fill_column =
          Responsive.tileTall(context) - widget._position_y - widget._height;
    }
    return AnimatedOpacity(
      // If the widget is visible, animate to 0.0 (invisible).
      // If the widget is hidden, animate to 1.0 (fully visible).
      opacity: widget._visibility ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      onEnd: () {
        widget._visible = widget._visibility;
        widget._visibility ? widget.onWindowOpened() : widget.onWindowClosed();
      },
      //alwaysIncludeSemantics: true,
      // The green box must be a child of the AnimatedOpacity widget.
      child: Row(
        children: [
          if (Responsive.isLarge(context) || Responsive.isMedium(context))
            Expanded(
              flex: (Responsive.tileWide(context) / 2).floor().toInt() +
                  widget._position_x -
                  ((widget._height / 2).ceil()),
              child: Container(),
            ),
          Expanded(
            flex: widget._width,
            child: Column(
              children: [
                Expanded(
                  flex: widget._position_y,
                  child: Container(),
                ),
                Expanded(
                  flex: widget._height,
                  child: widget._window,
                ),
                Expanded(
                  flex: fill_column,
                  child: Container(),
                ),
              ],
            ),
          ),
          if (Responsive.isLarge(context))
            Expanded(
              flex: (Responsive.tileWide(context) / 2).floor().toInt() -
                  widget._position_x -
                  ((widget._height / 2).floor()),
              child: Container(),
            ),
        ],
      ),
    );
  }
}

class DisplayStartMenu extends StatelessWidget {
  const DisplayStartMenu({
    Key? key,
    required this.startMenuSize,
    required this.visible,
    //required this.StartApp,
  }) : super(key: key);

  final int startMenuSize;
  final bool visible;
  //final VoidCallback StartApp;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: startMenuSize,
          child: AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            // The green box must be a child of the AnimatedOpacity widget.
            child: StartMenu(
                //StartApp: () {},
                ),
          ),
        ),
        if (startMenuSize < Responsive.tileWide(context))
          // screen white space
          Expanded(
            flex: Responsive.tileWide(context) - startMenuSize,
            child: Container(),
          ),
      ],
    );
  }
}

class DisplayNotification extends StatelessWidget {
  const DisplayNotification({
    Key? key,
    required this.notificationSize,
    required bool visibleNotification,
  })  : _visibleNotification = visibleNotification,
        super(key: key);

  final int notificationSize;
  final bool _visibleNotification;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (notificationSize < Responsive.tileWide(context))
          Expanded(
            flex: Responsive.tileWide(context) - notificationSize,
            child: Container(),
          ),
        Expanded(
          flex: notificationSize,
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
    );
  }
}
