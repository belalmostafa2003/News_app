import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class News extends StatelessWidget {
  const News ({ super.key, required this.articlestModel});
  final ArticlestModel articlestModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ClipRRect(
          child: Image.network(
            articlestModel.image?? 'not faund' ,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            )),
            const SizedBox(
              height: 12,
            ),
            Text(
              articlestModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articlestModel.subtitle??'not faund',
              maxLines: 2,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),         
      ],
    );
  }
}