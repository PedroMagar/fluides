import 'package:fluides/constants.dart';
import 'package:fluides/desk/desk.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Fluides());
}

class Fluides extends StatelessWidget {
  const Fluides({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fluides',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.blue,
      ),
      home: Desk(),
    );
  }
}
