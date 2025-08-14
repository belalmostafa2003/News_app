import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class Newservices {
  final Dio dio;

  Newservices(this.dio);

  Future<List<ArticlestModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=712de4613e1f47e0bc50c64897b34459');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<ArticlestModel> articlestList = [];

      for (var article in articles) {
        ArticlestModel articlestModel = ArticlestModel.formjson(article);
        articlestList.add(articlestModel);
      }

      return articlestList;
    } on Exception catch (e) {
      return [];
    }
  }
}
