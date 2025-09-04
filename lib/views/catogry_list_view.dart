import 'package:flutter/material.dart';

import '../models/image_and_text_model.dart';
import '../widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.imageAndText,
  });

  final List<ImageAndText> imageAndText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount:imageAndText.length ,
        itemBuilder: (context,int index){
          return CategoryCard(imageAndText: imageAndText[index]);
        },
      ),
    );
  }
}
