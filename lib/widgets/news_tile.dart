import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';

class NewsTile extends StatelessWidget {
   NewsTile({
    super.key,
  required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: articleModel.image == null ? Container(color: Colors.red,): Image.network(
            articleModel.image!   ,
            height: 210,
            width: double.infinity,
          ),
        ),
        Text(
          articleModel.title!
          ,maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        Text(
        
        articleModel.Subtitle ?? 'null'
        ,  overflow: TextOverflow.ellipsis,
        
          style: TextStyle(fontSize: 10, color: Colors.grey),
        ),
        
      ],
    );
  }
}
