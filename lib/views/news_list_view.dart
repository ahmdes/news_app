import 'package:flutter/material.dart';
import '../models/news_tile_model.dart';
import '../widgets/news_tile_item_widget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.newsTileModel,
  });

  final List<NewsTileModel> newsTileModel;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: newsTileModel.length,
                (context, int index) {
              return NewsTileItem(newsTileModel: newsTileModel[index]);
            }));
  }
}