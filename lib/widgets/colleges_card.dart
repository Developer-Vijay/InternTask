import 'package:flutter/material.dart';
import 'package:interntask/constants/app_size_config.dart';
import 'package:interntask/view/home_screen4.dart';

import '../constants/app_colors.dart';

class CollegesCard extends StatelessWidget {
  const CollegesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: AppSizeConfig.heightMultiplier * 1,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 2, horizontal: 4),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border:
                        Border.all(color: AppColors.greytextColor)),
                child: Text(
                  "MVSH Engineering college",
                  style: TextStyle(
                      fontSize: AppSizeConfig.textMultiplier * 1.2),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border:
                        Border.all(color: AppColors.greytextColor)),
                child: Text(
                  "MVSH Engineering college",
                  style: TextStyle(
                      fontSize: AppSizeConfig.textMultiplier * 1.2),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border:
                        Border.all(color: AppColors.greytextColor)),
                child: Text(
                  "MVSH Engineering college",
                  style: TextStyle(
                      fontSize: AppSizeConfig.textMultiplier * 1.2),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 12),
              child: SizedBox(
                width: AppSizeConfig.widthMultiplier * 30,
                height: AppSizeConfig.heightMultiplier * 34,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen4()));
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 8),
                        alignment: Alignment.topLeft,
                        width: AppSizeConfig.widthMultiplier * 120,
                        height: AppSizeConfig.heightMultiplier * 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            image: const DecorationImage(
                                image: AssetImage(
                                  "assets/images/img2.png",
                                ),
                                fit: BoxFit.cover)),
                        child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height:
                                    AppSizeConfig.heightMultiplier *
                                        5,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.share_outlined,
                                    )),
                              ),
                              Container(
                                height:
                                    AppSizeConfig.heightMultiplier *
                                        5,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons
                                        .bookmark_border_outlined)),
                              ),
                            ]),
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "GHJK Engineering  colleges",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize:
                                      AppSizeConfig.textMultiplier *
                                          2.1),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: AppSizeConfig.widthMultiplier * 15,
                            height:
                                AppSizeConfig.heightMultiplier * 4,
                            margin: const EdgeInsets.only(
                                right: 8, top: 8.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(10),
                                color: AppColors.greenColor),
                            child: const Text(
                              "4.3 ★",
                              style: TextStyle(
                                  color: AppColors.whitextColor),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 2.0,
                                  left: 8,
                                  right: 8,
                                  bottom: 0),
                              child: Text(
                                'Click in this lorem ipsum college is the key to succes and it is not finded',
                                style: TextStyle(
                                    fontSize:
                                        AppSizeConfig.textMultiplier *
                                            1.6,
                                    color: Colors.grey[500]),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 2.0,
                                  left: 8,
                                  right: 8,
                                  bottom: 0),
                              child: MaterialButton(
                                minWidth:
                                    AppSizeConfig.widthMultiplier * 1,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10)),
                                child: const Text("Apply Now"),
                                color: AppColors.primaryColor,
                                textColor: AppColors.whitextColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: AppSizeConfig.widthMultiplier * 1,
                          ),
                          Image.asset("assets/images/like 1.png"),
                          SizedBox(
                            width: AppSizeConfig.widthMultiplier * 1,
                          ),
                          Text(
                              "lorem ispsum dolor sit is amit here it sir",
                              style: TextStyle(
                                  fontSize:
                                      AppSizeConfig.textMultiplier *
                                          1.5,
                                  color: AppColors.greytextColor)),
                          const Spacer(),
                          const Icon(Icons.remove_red_eye_outlined,
                              color: AppColors.greytextColor),
                          SizedBox(
                            width: AppSizeConfig.widthMultiplier * 1,
                          ),
                          Text(
                            "468+",
                            style: TextStyle(
                                fontSize:
                                    AppSizeConfig.textMultiplier *
                                        1.5,
                                color: AppColors.greytextColor),
                          ),
                          SizedBox(
                            width: AppSizeConfig.widthMultiplier * 3,
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
