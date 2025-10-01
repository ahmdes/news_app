import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_flutter/behaviour/core/resources/colors_manager.dart';
import 'package:news_app_flutter/presentation/views/category_element_details_view.dart';

import '../../behaviour/models/article_model.dart';

class NewsTileItem extends StatelessWidget {
  const NewsTileItem({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryElementDetailsView(
                url: articleModel.url ?? "",
              ),
            ),
          );
        },
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(articleModel.image ?? ""),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // Image.network(articleModel.image??""),
            Text(
              articleModel.title ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: ColorsManager.black,
              ),
            ),
            Text(
              articleModel.subTitle ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15, color: ColorsManager.brown),
            ),
          ],
        ),
      ),
    );
  }
}
