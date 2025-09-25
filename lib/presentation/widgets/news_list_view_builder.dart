import 'package:flutter/material.dart';
import '../../behaviour/models/article_model.dart';
import '../../behaviour/services/news_services.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.informationType});
  final String informationType;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices().getNews(widget.informationType);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasError) {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                "Error : ${snapshot.error}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
          );
        } else if (snapshot.hasData) {
          return NewsListView(
            articlesData: snapshot.data,
          );
        } else {
          return SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
          );
        }
      },
    );
  }
}
