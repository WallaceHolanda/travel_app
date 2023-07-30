import 'package:flutter/material.dart';
import 'package:travel_app/utils/enums/app_colors.dart';
import 'package:travel_app/utils/enums/app_strings.dart';
import 'package:travel_app/widgets/circle_tab_indicator_widget.dart';
import 'package:travel_app/widgets/large_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 3,
      vsync: this,
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.menu, size: 30, color: Colors.black),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.mainTextColor.color.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: LargeTextWidget(text: AppStrings.discover.texto),
          ),
          const SizedBox(height: 30),
          SizedBox(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: tabController,
                labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicatorWidget(
                  color: AppColors.mainColor.color,
                  radius: 4,
                ),
                tabs: [
                  Tab(text: AppStrings.places.texto),
                  Tab(text: AppStrings.inspiration.texto),
                  Tab(text: AppStrings.emotions.texto),
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            padding: const EdgeInsets.only(left: 20),
            child: TabBarView(
              controller: tabController,
              children: [
                Text(AppStrings.places.texto),
                Text(AppStrings.inspiration.texto),
                Text(AppStrings.emotions.texto),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
