import 'package:flutter/material.dart';
import 'package:interntask/constants/app_colors.dart';
import 'package:interntask/view/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const Center(child: Text("Saved")),
    const Center(child: Text("Saved")),
    const Center(child: Text("Account")),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey[400],
            showUnselectedLabels: true,
            unselectedLabelStyle:
                const TextStyle(color: AppColors.whitextColor),
            onTap: _onItemTapped,
            currentIndex: _currentIndex,
            selectedItemColor: AppColors.whitextColor,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'search',
                  backgroundColor: AppColors.primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.find_in_page),
                  label: 'saved',
                  backgroundColor: AppColors.primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.disc_full_outlined),
                  label: 'saved',
                  backgroundColor: AppColors.primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: 'Home',
                  backgroundColor: AppColors.primaryColor),
            ]),
        body: _pages[_currentIndex],
      ),
    );
  }
}
