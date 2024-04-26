class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArt(
      {required this.imgUrl,
      required this.newsHead,
      required this.newsDes,
      required this.newsCnt,
      required this.newsUrl});

  static NewsArt fromApitoApp(Map<String, dynamic> article) {
    return NewsArt(
        imgUrl: article['urlToImage'] ??
            "https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg",
        newsHead: article['title'] ?? '--',
        newsDes: article['description'] ?? '--',
        newsCnt: article['content'] ?? '--',
        newsUrl: article['url'] ??
            'https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en');
  }
}
