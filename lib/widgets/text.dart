import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({Key? key, required this.data, this.style})
      : super(key: key);
  final data;
  final style;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
    );
  }
}
