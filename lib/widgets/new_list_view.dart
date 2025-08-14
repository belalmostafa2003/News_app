
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news.dart';

class NewsListView extends StatelessWidget {
  final List<ArticlestModel> articles;

  const NewsListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: News(
                    articlestModel: articles[index],
                  ),
                );
              },
            ),
          );
  }
}
