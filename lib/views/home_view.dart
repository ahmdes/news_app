import 'package:flutter/material.dart';
import 'package:news_app_flutter/models/image_and_text_model.dart';
import 'catogry_list_view.dart';
import 'news_tile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<ImageAndText> imageAndText = const [
    ImageAndText(image: "assets/business.avif", word: "Business"),
    ImageAndText(image: "assets/entertaiment.avif", word: "Entertainment"),
    ImageAndText(image: "assets/general.avif", word: "General"),
    ImageAndText(image: "assets/health.avif", word: "Health"),
    ImageAndText(image: "assets/science.avif", word: "Science"),
    ImageAndText(image: "assets/sports.avif", word: "Sports"),
    ImageAndText(image: "assets/technology.jpeg", word: "Technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "New",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orangeAccent,
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
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text("this is sliver AppBar",style: TextStyle(
              color: Colors.yellow,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),),
            backgroundColor: Colors.brown,
            pinned: true,
          ),
          SliverToBoxAdapter(
              child: CategoryListView(imageAndText: imageAndText)),
          NewsTileView(),
        ],
      ),
    );
  }
}
