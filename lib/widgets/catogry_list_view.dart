import 'package:flutter/material.dart';

import '../models/image_and_text_model.dart';
import 'category_card.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({
    super.key,
    required this.imageAndText,
  });

  final List<ImageAndText> imageAndText;

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount:widget.imageAndText.length ,
        itemBuilder: (context,int index){
          return CategoryCard(imageAndText: widget.imageAndText[index]);
        },
      ),
    );
  }
}
