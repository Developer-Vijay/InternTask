import 'package:flutter/material.dart';
import 'package:interntask/constants/app_size_config.dart';
import 'package:interntask/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            AppSizeConfig().init(constraints, orientation);

            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: ("Flutter Task"),
                theme: ThemeData(primarySwatch: Colors.green),
                home: const HomePage());
          },
        );
      },
    );
  }
}
