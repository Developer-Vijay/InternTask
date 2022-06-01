import 'package:flutter/material.dart';
import 'package:interntask/constants/app_colors.dart';
import 'package:interntask/constants/app_size_config.dart';
import 'package:interntask/constants/app_strings.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class AboutCollege extends StatelessWidget {
  const AboutCollege({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Text(
                "GHJK Engineering college",
                style: TextStyle(
                    fontSize: AppSizeConfig.textMultiplier * 2.8,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Text(
                        AppStrings.about,
                        style: textstylecont,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      width: AppSizeConfig.widthMultiplier * 15,
                      height: AppSizeConfig.heightMultiplier * 4,
                      margin:
                          const EdgeInsets.only(right: 8, top: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.greenColor),
                      child: const Text(
                        "4.3 ★",
                        style:
                            TextStyle(color: AppColors.whitextColor),
                      ),
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              Text(
                "Description",
                style: textstylehead,
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Text(
                  AppStrings.collegeDescription,
                  style: textstylecont,
                ),
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 2,
              ),
              Text(
                "Location",
                style: textstylehead,
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/map.png"),
                ),
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1,
              ),
              Text(
                "Student Review",
                style: textstylehead,
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/p2.png"),
                  Spacer(
                    flex: 1,
                  ),
                  Image.asset("assets/images/p3.png"),
                  Spacer(),
                  Image.asset("assets/images/p1.png"),
                  Spacer(),
                  Image.asset("assets/images/p4.png"),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: AppSizeConfig.widthMultiplier * 12,
                    height: AppSizeConfig.heightMultiplier * 6.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                      shape: BoxShape.rectangle,
                    ),
                    child: Text(
                      "+12",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor),
                    ),
                  ),
                  Spacer(
                    flex: 5,
                  ),
                ],
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1.5,
              ),
              Text(
                "Arair sai",
                style: textstylehead,
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1.5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Text(
                  AppStrings.rating,
                  style: textstylecont,
                ),
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 1.5,
              ),
              SmoothStarRating(
                allowHalfRating: true,
                rating: 4,
                borderColor: Colors.amber,
                color: Colors.amber,
                starCount: 5,
              ),
              SizedBox(
                height: AppSizeConfig.heightMultiplier * 2.5,
              ),
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
                child: Text("Apply Now"),
                color: AppColors.primaryColor,
                textColor: AppColors.whitextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
