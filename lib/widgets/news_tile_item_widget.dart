import 'package:flutter/material.dart';
import 'package:news_app_flutter/models/news_tile_model.dart';

class NewsTileItem extends StatelessWidget {
  const NewsTileItem({super.key, required this.newsTileModel});
  final NewsTileModel newsTileModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image.network(newsTileModel.image),
          Text(
            newsTileModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            newsTileModel.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 15, color: Colors.brown),
          ),
        ],
      ),
    );
  }
}
