import 'dart:convert';

import 'package:flutter_news/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {

  List<ArticleModel> news = [];

  Future<void> getNews() async {

    var queryParameters = {
      'sources': 'techcrunch',
      'apiKey': 'f5cd16dedac64dec93667d8b6a9755ab',
    };
    var url = Uri.https('newsapi.org', '/v2/top-headlines', queryParameters);
    var response = await http.get(url, headers: {
      "Accept": "application/json",
    });
    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if(element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            // publishedAt: element['publishedAt'],
            content: element['content'],
          );

          news.add(articleModel);
        }
      });
    }
  }

}