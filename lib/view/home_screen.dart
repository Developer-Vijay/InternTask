import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:interntask/constants/app_colors.dart';
import 'package:interntask/constants/app_size_config.dart';
import 'package:interntask/widgets/choice_cards.dart';
import 'package:interntask/widgets/colleges_card.dart';
import 'package:interntask/widgets/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    int _curr = 0;
    int flex2 = 2;
    int sh = 0;
    double imageHeight = AppSizeConfig.imageSizeMultiplier * 38;
    double imageWidth = AppSizeConfig.imageSizeMultiplier * 78;
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: AppColors.primaryColor),
              width: AppSizeConfig.widthMultiplier * 100,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 12.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Badge(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.all(4),
                            child: const Icon(
                              Icons.notifications,
                              color: AppColors.whitextColor,
                            ),
                          )),
                    ),
                    flex2 == 3
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 8.0),
                            child: Text(
                              "Find Your own way",
                              style: TextStyle(
                                  color: AppColors.whitextColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize:
                                      AppSizeConfig.textMultiplier *
                                          2.5),
                            ),
                          ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 8.0),
                      child: Texts(
                        data: "Search in 600 colleges around!",
                        style: TextStyle(
                            color: AppColors.whitextColor,
                            fontWeight: FontWeight.w300,
                            fontSize:
                                AppSizeConfig.textMultiplier * 2),
                      ),
                    ),
                    SizedBox(
                      height: AppSizeConfig.heightMultiplier * 4,
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.whitextColor),
                          width: AppSizeConfig.widthMultiplier * 62,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(fontSize: 12),
                                hintText:
                                    "Search for Colleges,schools....",
                                prefixIcon: Icon(
                                  Icons.search,
                                )),
                          ),
                        ),
                        Container(
                          width: AppSizeConfig.widthMultiplier * 16,
                          height: AppSizeConfig.heightMultiplier * 7,
                          decoration: BoxDecoration(
                              color: AppColors.whitextColor,
                              borderRadius:
                                  BorderRadius.circular(14)),
                          child: const Icon(
                            Icons.mic,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ]),
            )),
        Expanded(
            flex: 2,
            child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: ((value) {
                  _curr = value;
                }),
                controller: controller,
                children: [
                  ChoiceCards(
                      flex: flex2,
                      sh: sh,
                      controller: controller,
                      curr: _curr,
                      imageHeight: imageHeight,
                      imageWidth: imageWidth),
                  const CollegesCard()
                ])),
      ],
    );
  }
}
