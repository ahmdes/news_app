import 'package:flutter/material.dart';
import 'package:news_app_flutter/models/article_model.dart';

import 'news_tile_item_widget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articlesData,
  });
  final List<ArticleModel>articlesData;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articlesData.length,
        (context, int index) {
          return NewsTileItem(articleModel: articlesData[index]);
        },
      ),
    );
  }
}
