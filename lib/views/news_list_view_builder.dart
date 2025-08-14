import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news-services.dart';
import 'package:news_app/widgets/new_list_view.dart';

class NewsLIstViewBuilder extends StatefulWidget {
  const NewsLIstViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsLIstViewBuilder> createState() => _NewsLIstViewBuilderState();
}

class _NewsLIstViewBuilderState extends State<NewsLIstViewBuilder> {
  var future;
  
  @override
  void initState(){
    super.initState();
    future =  Newservices(Dio()).getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlestModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops there was a ererr, try agin'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
