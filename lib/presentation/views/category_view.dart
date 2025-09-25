import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          NewsListViewBuilder(
            informationType: categoryName.toLowerCase(),
          ),
        ],
      ),
    );
  }
}
