import 'package:flutter/material.dart';

//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:fluides/components/constants.dart';

class GenericWindow extends StatelessWidget {
  GenericWindow({
    required this.name,
    Key? key,
  }) : super(key: key);
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 37, 219, 189),
    );
  }
}
