import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/news_services.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  List<ArticleModel> articles = [];
  NewsListView({required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(articleModel: articles[index]);
        },
      ),
    );
  }
}
