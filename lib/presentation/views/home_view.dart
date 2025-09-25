import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../behaviour/models/image_and_text_model.dart';
import '../widgets/catogry_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<ImageAndText> imageAndText = const [
    ImageAndText(image: "assets/business.avif", word: "Business"),
    ImageAndText(image: "assets/entertaiment.avif", word: "Entertainment"),
    ImageAndText(image: "assets/general.avif", word: "General"),
    ImageAndText(image: "assets/health.avif", word: "Health"),
    ImageAndText(image: "assets/science.avif", word: "Science"),
    ImageAndText(image: "assets/sports.avif", word: "Sports"),
    ImageAndText(image: "assets/technology.jpeg", word: "Technology"),
  ];

  bool? value = false;
  String selectOption = "option one";
  double valueOfSlider = 0.5;
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
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(
              "this is sliver AppBar",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: Colors.brown,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Formatter",
                  hintText: "try your formatter",
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp("[a-z]")),
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
                  LengthLimitingTextInputFormatter(4),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Checkbox(
              value: value,
              onChanged: (newValue) {
                value = newValue;
                setState(() {});
              },
            ),
          ),
          SliverToBoxAdapter(
              child: Radio(
                  value: "option one",
                  groupValue: selectOption,
                  onChanged: (value) {
                    selectOption = value!;
                    setState(() {});
                  },),),
          SliverToBoxAdapter(
            child: Radio(
              value: "option two",
              groupValue: selectOption,
              onChanged: (value) {
                selectOption = value!;
                setState(() {});
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Slider(
              divisions: 5,
              value: valueOfSlider,
              onChanged: (value) {
                valueOfSlider = value;
                setState(() {});
              },
              label: valueOfSlider.toString(),
              thumbColor:Colors.red ,
              activeColor:Colors.blue ,
              inactiveColor: Colors.green,
              secondaryActiveColor: Colors.yellow,
            ),
          ),
          SliverToBoxAdapter(
            child: CategoryListView(
              imageAndText: imageAndText,
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
