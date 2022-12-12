import 'package:fluides/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class Window extends StatelessWidget {
  const Window({
    Key? key,
    required bool visibleWindow,
    required bool fullscreen, 
    required int position_x,
    required int position_y,
    required int position_z,
    required int offset_top,
    required int offset_bottom,
    required int offset_left,
    required int offset_right,
    required Widget window,
    required this.onWindowOpened,
    required this.onWindowClosed,
  })  : _visible = visibleWindow,
        _fullscreen = fullscreen,
        _position_x = position_x,
        _position_y = position_y,
        _position_z = position_z,
        _offset_top = offset_top,
        _offset_bottom = offset_bottom,
        _offset_left = offset_left,
        _offset_right = offset_right,
        _window = window,
        super(key: key);

  final bool _visible;
  final bool _fullscreen;
  final int _position_x;
  final int _position_y;
  final int _position_z;
  final int _offset_top;
  final int _offset_bottom;
  final int _offset_left;
  final int _offset_right;

  final Widget _window;

  final VoidCallback onWindowOpened;
  final VoidCallback onWindowClosed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (Responsive.isLarge(context))
          Expanded(
            flex: (Responsive.tileWide(context) / 4).floor().toInt(),
            child: Container(),
          ),
        Expanded(
          flex: (Responsive.tileWide(context) / 2).floor().toInt(),
          child: AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            onEnd: () => _visible ? onWindowOpened() : onWindowClosed(),
            // The green box must be a child of the AnimatedOpacity widget.
            child: _window,
          ),
        ),
        if (Responsive.isLarge(context))
          Expanded(
            flex: (Responsive.tileWide(context) / 4).floor().toInt(),
            child: Container(),
          ),
      ],
    );
  }
}