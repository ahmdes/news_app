import 'package:dio/dio.dart';
import '../models/article_model.dart';

class NewsServices {
  Dio dio = Dio();
  Future<List<ArticleModel>> getNews(String informationType) async {
    List<ArticleModel> articlesData = [];
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/everything?q=$informationType&apiKey=55873b6e60034a49b6e408993555f927#");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      for (var element in articles) {
        articlesData.add(
          ArticleModel(
            image: element['urlToImage'],
            title: element['title'],
            subTitle: element['description'],
          ),
        );
      }
      return articlesData;
    } catch (e) {
      throw Exception("Faild to fetch news data");
    }
  }
}
