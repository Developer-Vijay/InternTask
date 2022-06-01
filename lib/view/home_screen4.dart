import 'package:flutter/material.dart';
import 'package:interntask/constants/app_colors.dart';
import 'package:interntask/constants/app_size_config.dart';
import 'package:interntask/view/tabs/about_college.dart';
import 'package:interntask/view/tabs/events.dart';
import 'package:interntask/view/tabs/hostel_facility.dart';
import 'package:interntask/view/tabs/q&a.dart';

class HomeScreen4 extends StatefulWidget {
  const HomeScreen4({Key? key}) : super(key: key);

  @override
  State<HomeScreen4> createState() => _HomeScreen4State();
}

class _HomeScreen4State extends State<HomeScreen4>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  List<Widget> list = const [
    Tab(
      child: Text("About College"),
    ),
    Tab(
      child: Text(" Hostel facility"),
    ),
    Tab(
      child: Text("Q&A"),
    ),
    Tab(
      child: Text("Events"),
    )
  ];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 4,
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.primaryColor,
            pinned: true,
            floating: false,
            forceElevated: true,
            toolbarHeight: 30,
            actions: [
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.whitextColor),
                child: IconButton(
                    color: AppColors.textColor,
                    icon: const Icon(
                      Icons.bookmark_outline,
                      size: 17,
                    ),
                    onPressed: () {}),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [StretchMode.blurBackground],
              background: Image.asset("assets/images/college.png"),
            ),
            expandedHeight: AppSizeConfig.heightMultiplier * 45,
            bottom: TabBar(
              padding: const EdgeInsets.all(3),
              indicatorColor: AppColors.whitextColor,
              labelPadding: const EdgeInsets.only(left: 4.0),
              tabs: list,
              onTap: (index) {},
              controller: _controller,
            ),
            leading: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.whitextColor),
              child: IconButton(
                  color: AppColors.primaryColor,
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 17,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            title: Text(
              'GHJK Engineering college',
              style: TextStyle(
                  fontSize: AppSizeConfig.textMultiplier * 2.2),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
                controller: _controller,
                children: const [
                  AboutCollege(),
                  HostelFacility(),
                  QandA(),
                  Events()
                ]),
          )
        ],
      )),
    ));
  }
}
