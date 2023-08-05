import 'package:flutter/material.dart';
import 'package:travel_app/pages/navpages/bar_item_page.dart';
import 'package:travel_app/pages/navpages/home_page.dart';
import 'package:travel_app/pages/navpages/profile_page.dart';
import 'package:travel_app/pages/navpages/search_page.dart';
import 'package:travel_app/utils/enums/enums.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;

  final pages = const [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    ProfilePage(),
  ];

  void onTap(int index) => setState(() => currentPageIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: onTap,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: AppStrings.home.texto,
            icon: const Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label: AppStrings.bar.texto,
            icon: const Icon(Icons.bar_chart_sharp),
          ),
          BottomNavigationBarItem(
            label: AppStrings.search.texto,
            icon: const Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: AppStrings.profile.texto,
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
