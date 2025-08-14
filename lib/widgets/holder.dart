// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news-services.dart';
// import 'package:news_app/widgets/news.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticlestModel> articles = [];
//   bool isLouading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await Newservices(Dio()).getNews();
//     isLouading = false;
//     setState(() {});
//   }

// // indicator
//   @override
//   Widget build(BuildContext context) {
//     return isLouading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: News(
//                     articlestModel: articles[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }
