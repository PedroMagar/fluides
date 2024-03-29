// ignore_for_file: non_constant_identifier_names, must_be_immutable

import './components/window_menu/window_menu.dart';
import 'package:flutter/material.dart';
import 'package:fluides/components/constants.dart';
import 'package:fluides/components/responsive.dart';
import 'components/window_layout/window_layout_small.dart';
import 'components/window_layout/window_layout_medium.dart';
import 'components/window_layout/window_layout_large.dart';

class ApplicationWindow extends StatefulWidget {
  ApplicationWindow({
    required this.name,
    required this.page,
    Key? key,
  }) : super(key: key);

  final String name;
  final Widget page;

  bool menu_open = false;

  @override
  State<ApplicationWindow> createState() => _ApplicationWindowState();
}

class _ApplicationWindowState extends State<ApplicationWindow> {
  @override
  Widget build(BuildContext context) {
    final bool screen_size_small = Responsive.isSmall(context);
    final bool screen_size_medium = Responsive.isMedium(context);
    final bool screen_size_large = Responsive.isLarge(context);
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadiusDefault,
      ),
      child: ClipRRect(
        borderRadius: borderRadiusDefault,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white.withOpacity(0),
          body: SafeArea(
            child: Stack(
              children: [
                if (screen_size_small)
                  WindowLayoutSmall(
                      page: widget.page,
                      name: widget.name,
                      onMenuPressed: () {
                        widget.menu_open = !widget.menu_open;
                        setState(() {});
                      }),
                if (screen_size_medium)
                  WindowLayoutMedium(
                      page: widget.page,
                      name: widget.name,
                      onMenuPressed: () {
                        widget.menu_open = !widget.menu_open;
                        setState(() {});
                      }),
                if (screen_size_large)
                  WindowLayoutLarge(
                      page: widget.page,
                      name: widget.name,
                      onMenuPressed: () {
                        widget.menu_open = !widget.menu_open;
                        setState(() {});
                      }),
                if (widget.menu_open)
                  Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 9,
                        child: Stack(
                          children: [
                            if (screen_size_small == false)
                              Container(
                                color: const Color.fromARGB(32, 0, 0, 0),
                              ), // Background color
                            Row(
                              children: [
                                const Expanded(
                                  flex: 1,
                                  child: WindowMenu(), // Window Menu
                                ),
                                if (screen_size_medium)
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        widget.menu_open = false;
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                if (screen_size_large)
                                  Expanded(
                                    flex: 2,
                                    child: GestureDetector(
                                      onTap: () {
                                        widget.menu_open = false;
                                        setState(() {});
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
