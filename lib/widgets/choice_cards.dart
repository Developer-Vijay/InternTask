import 'package:flutter/material.dart';
import 'package:interntask/widgets/bottomSheet.dart';

class ChoiceCards extends StatelessWidget {
  ChoiceCards({
    Key? key,
    required this.imageHeight,
    required this.controller,
    required this.curr,
    required this.flex,
    required this.sh,
    required this.imageWidth,
  }) : super(key: key);

  final double imageHeight;
  final double imageWidth;
  int flex;
  int sh;
  PageController controller = PageController();
  int curr;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              builder: (BuildContext context) {
                return BottomSheets(
                  sh: sh,
                  flex: flex,
                  curr: curr,
                  controller: controller,
                );
              });
        },
        child: Image.asset("assets/images/Frame 7.png",
            height: imageHeight, width: imageWidth),
      ),
      InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              builder: (BuildContext context) {
                return BottomSheets(
                  sh: sh,
                  flex: flex,
                  curr: curr,
                  controller: controller,
                );
              });
        },
        child: Image.asset("assets/images/Frame 8.png",
            height: imageHeight, width: imageWidth),
      ),
      InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              builder: (BuildContext context) {
                return BottomSheets(
                  sh: sh,
                  flex: flex,
                  curr: curr,
                  controller: controller,
                );
              });
        },
        child: Image.asset("assets/images/Frame 9.png",
            height: imageHeight, width: imageWidth),
      ),
    ]);
  }
}
