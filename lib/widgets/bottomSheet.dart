import 'package:flutter/material.dart';
import 'package:interntask/Models/list.dart';
import 'package:interntask/constants/app_colors.dart';
import 'package:interntask/constants/app_size_config.dart';

class BottomSheets extends StatefulWidget {
  BottomSheets(
      {Key? key,
      required this.flex,
      required this.sh,
      required this.curr,
      required this.controller})
      : super(key: key);

  PageController controller = PageController();
  int curr;
  int flex;
  int sh;

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Sort by",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizeConfig.textMultiplier * 2.1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
        const Divider(
          thickness: 1,
        ),
        SizedBox(
          height: AppSizeConfig.heightMultiplier * 3,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: listFilter.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                    print("Hello");

                    widget.controller.jumpToPage(1);
                  });
                },
                child: Row(
                  children: [
                    Image.asset(listFilter[index].image),
                    SizedBox(
                      width: AppSizeConfig.widthMultiplier * 8,
                    ),
                    Text(
                      listFilter[index].name,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: AppSizeConfig.textMultiplier * 2),
                    ),
                    Spacer(),
                    Radio(
                        activeColor: AppColors.primaryColor,
                        value: 2,
                        groupValue: 1,
                        onChanged: (value) {})
                  ],
                ),
              ),
            );
            // RadioListTile(
            //   title: Text(
            //     listFilter[index].name,
            //     style: const TextStyle(fontWeight: FontWeight.w500),
            //   ),
            //   groupValue: null,
            //   activeColor: AppColors.primaryColor,
            //   controlAffinity: ListTileControlAffinity.trailing,
            //   onChanged: (Null? value) {},
            //   value: null,
            //   secondary: Image.asset(listFilter[index].image),
            // );
          },
        ),
        // MaterialButton(
        //   onPressed: () {
        //     setState(() {
        //       Navigator.pop(context);
        //       print("Hello");

        //       widget.controller.jumpToPage(1);
        //     });
        //   },
        //   shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(10)),
        //   child: Text("Apply"),
        //   color: AppColors.primaryColor,
        //   textColor: AppColors.whitextColor,
        // )
      ],
    );
  }
}
