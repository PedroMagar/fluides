import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:fluides/components/constants.dart';
import 'package:fluides/components/process_manager/process_manager.dart';
import 'package:fluides/desk/desk.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersive,
    overlays: [],
  );
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => ProcessManager())],
    child: const Fluides(),
  ));
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
      home: const Desk(),
    );
  }
}
