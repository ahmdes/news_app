import 'package:flutter/material.dart';
import 'package:news_app_flutter/behaviour/core/resources/colors_manager.dart';
import 'package:news_app_flutter/behaviour/core/resources/constant_manager.dart';
import '../widgets/catogry_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: ColorsManager.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: ColorsManager.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CategoryListView(
              imageAndText: ConstantManager.imageAndText,
            ),
          ),
          NewsListViewBuilder(
            informationType: 'general',
          ),
        ],
      ),
    );
  }
}
