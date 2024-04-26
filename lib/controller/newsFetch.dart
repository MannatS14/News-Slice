// https://newsapi.org/v2/everything?q=apple&from=2024-04-23&to=2024-04-23&sortBy=popularity&apiKey=3838580c3d7e4b1ba49b10451bf60a1c
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';

class NewsFetch {
  static List sources = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];

  static newsFetch() async {
    final random = Random();
    var sourceID = sources[random.nextInt(sources.length)];
    print(sourceID);
    Response response = await get(
      Uri.parse(
          "https://newsapi.org/v2/everything?q=$sourceID&from=2024-04-23&to=2024-04-23&sortBy=popularity&apiKey=3838580c3d7e4b1ba49b10451bf60a1c"),
    );
    Map bodyData = jsonDecode(response.body);
    List articles = bodyData["articles"];
    // print(articles);

    final Newrandom = Random();
    var myArticle = articles[random.nextInt(articles.length)];
    print(myArticle);
  }
}
