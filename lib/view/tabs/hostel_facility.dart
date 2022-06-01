import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:interntask/constants/app_size_config.dart';
import 'package:interntask/constants/app_strings.dart';

import '../../constants/app_colors.dart';

class HostelFacility extends StatelessWidget {
  const HostelFacility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> imageList = [
      Image.asset(
        "assets/images/r1.png",
      ),
      Image.asset("assets/images/r2.png"),
      Image.asset(
        "assets/images/r1.png",
      ),
      Image.asset("assets/images/r2.png"),
    ];
    final textstylehead = TextStyle(fontWeight: FontWeight.w800);
    final textstylecont = TextStyle(
        color: AppColors.greytextColor, fontWeight: FontWeight.w500);
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        top: 12,
      ),
      child: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.primaryColor),
                    width: AppSizeConfig.widthMultiplier * 13,
                    height: AppSizeConfig.heightMultiplier * 3,
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/bed (2) 4.png",
                            height:
                                AppSizeConfig.imageSizeMultiplier * 4,
                            color: AppColors.whitextColor),
                        Text(
                          "4",
                          style: TextStyle(
                              color: AppColors.whitextColor),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppSizeConfig.widthMultiplier * 2,
                  ),
                  bed("3"),
                  SizedBox(
                    width: AppSizeConfig.widthMultiplier * 2,
                  ),
                  bed("2"),
                  SizedBox(
                    width: AppSizeConfig.widthMultiplier * 2,
                  ),
                  bed("1"),
                ],
              ),
              CarouselSlider(
                  items: imageList,
                  options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      scrollDirection: Axis.horizontal,
                      initialPage: 1,
                      viewportFraction: 0.46)),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 2,
              ),
              Text(
                AppStrings.about,
                style: textstylecont,
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Text(
                      "GHJK Engineering Hostel",
                      style: TextStyle(
                          fontSize: AppSizeConfig.textMultiplier * 2,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: AppSizeConfig.widthMultiplier * 15,
                    height: AppSizeConfig.heightMultiplier * 4,
                    margin: const EdgeInsets.only(right: 8, top: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.greenColor),
                    child: const Text(
                      "4.3 ★",
                      style: TextStyle(color: AppColors.whitextColor),
                    ),
                  ),
                  SizedBox(
                    width: AppSizeConfig.widthMultiplier * 1,
                  ),
                ],
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1,
              ),
              Row(
                children: [
                  SizedBox(
                    width: AppSizeConfig.widthMultiplier * 1,
                  ),
                  const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    width: AppSizeConfig.widthMultiplier * 1,
                  ),
                  Text("lorem ispsum dolor sit is amit here it sir",
                      style: TextStyle(
                          fontSize:
                              AppSizeConfig.textMultiplier * 1.5,
                          color: AppColors.greytextColor)),
                  SizedBox(
                    width: AppSizeConfig.widthMultiplier * 3,
                  ),
                ],
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 2,
              ),
              Text(
                "Facilities",
                style: textstylehead,
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 2,
              ),
              Row(
                children: [
                  Image.asset("assets/images/university 1 (1).png"),
                  SizedBox(
                    width: AppSizeConfig.widthMultiplier * 2,
                  ),
                  const Text(
                    "College in 400mtrs",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 2,
              ),
              Row(
                children: [
                  Image.asset("assets/images/bath (1) 1 (1).png"),
                  SizedBox(
                    width: AppSizeConfig.widthMultiplier * 2,
                  ),
                  const Text(
                    "Bathrooms:2",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                height: AppSizeConfig.heightMultiplier * 6,
                minWidth: AppSizeConfig.widthMultiplier * 86,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text("Apply Now"),
                color: AppColors.primaryColor,
                textColor: AppColors.whitextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container bed(String text) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.primaryColor)),
      width: AppSizeConfig.widthMultiplier * 13,
      height: AppSizeConfig.heightMultiplier * 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/images/bed (2) 4.png",
              height: AppSizeConfig.imageSizeMultiplier * 4,
              color: AppColors.primaryColor),
          Text(
            text,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
