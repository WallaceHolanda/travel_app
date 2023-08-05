import 'package:flutter/material.dart';
import 'package:travel_app/utils/enums/enums.dart';
import 'package:travel_app/widgets/widgets.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, _) => CardImageWidget(
                      image: AppImages.mountain.caminho,
                    ),
                  ),
                  Text(AppStrings.inspiration.texto),
                  Text(AppStrings.emotions.texto),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LargeTextWidget(
                    text: AppStrings.exploreMore.texto,
                    size: 22,
                  ),
                  NormalTextWidget(
                    text: AppStrings.seeAll.texto,
                    color: AppColors.textColor1.color,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 45,
                  children: [
                    ExploreItemWidget(
                      image: AppImages.balloning.caminho,
                      text: AppStrings.balloning.texto,
                    ),
                    ExploreItemWidget(
                      image: AppImages.kayaking.caminho,
                      text: AppStrings.kayaking.texto,
                    ),
                    ExploreItemWidget(
                      image: AppImages.snorkling.caminho,
                      text: AppStrings.snorkling.texto,
                    ),
                    ExploreItemWidget(
                      image: AppImages.hiking.caminho,
                      text: AppStrings.hiking.texto,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
