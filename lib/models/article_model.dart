class ArticlestModel {
  final String? image;
  final String title;
  final String? subtitle;

  ArticlestModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  factory ArticlestModel.formjson(json){
    return ArticlestModel(
          image: json['urlToImage'],
          title: json['title'],
          subtitle: json['description'],
        );
  }
}
