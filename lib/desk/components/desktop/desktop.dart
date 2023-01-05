import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/light-gradient.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}
