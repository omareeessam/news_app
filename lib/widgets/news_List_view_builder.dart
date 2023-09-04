import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../model/article_model.dart';
import '../services/news_services.dart';
import 'new_list_view.dart';
class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
  final  String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
 var future;
  @override
  void initState() {
   future= NewsServices(Dio()).getNews(category: widget.category);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future:future ,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(child: Text('error try again'));
        } else {
          return SliverToBoxAdapter(child: CircularProgressIndicator());
        }
      },
    );
  }
}
