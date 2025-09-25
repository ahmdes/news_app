import 'package:flutter/material.dart';
import 'package:news_app_flutter/models/image_and_text_model.dart';
import 'package:news_app_flutter/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.imageAndText});
  final ImageAndText imageAndText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryView(
              categoryName: imageAndText.word,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageAndText.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(12),
          ),
          // color: Colors.orangeAccent,
          height: 130,
          width: 200,
          child: Center(
            child: Text(
              imageAndText.word,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
