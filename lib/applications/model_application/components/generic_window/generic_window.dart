import 'package:flutter/material.dart';

//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:fluides/components/constants.dart';

class GenericWindow extends StatelessWidget {
  const GenericWindow({
    required this.name,
    Key? key,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 37, 219, 189),
    );
  }
}
