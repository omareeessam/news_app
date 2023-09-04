import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../model/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?q=bitcoin&apiKey=e4f9e876c7e84db18b20cb150a52976e&category=$category',
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      print(articles);
      List<ArticleModel> articlList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            Subtitle: article['description']);
        articlList.add(articleModel);
      }
      return articlList;
    } else {
      throw 'error status code';
    }
  }
}
