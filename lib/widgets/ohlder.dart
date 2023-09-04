// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/model/article_model.dart';
// import 'package:news_app/services/news_services.dart';

// import 'news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   bool isLoading = true;
//   List<ArticleModel> articles = [];
//   @override
//   void initState() {
//     getGeneralNews();
//     super.initState();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsServices(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return NewsTile(articleModel: articles[index]);
//               },
//             ),
//           );
//   }
// }
