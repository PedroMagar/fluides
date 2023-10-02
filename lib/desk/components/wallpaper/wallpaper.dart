import 'package:flutter/material.dart';

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
