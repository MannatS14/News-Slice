import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_slice/controller/newsFetch.dart';
import 'package:news_slice/model/newsArt.dart';
import 'package:news_slice/view/widgets/NewsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NewsArt newsArt;

  Future<void> GetNews() async {
    newsArt = await NewsFetch.newsFetch();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    GetNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            GetNews();
          },
          // itemCount: 1000,
          itemBuilder: (context, index) {
            // NewsFetch.newsFetch();
            return NewsContainer(
              imgUrl: newsArt.imgUrl,
              newsHead: newsArt.newsHead,
              newsDes: newsArt.newsDes,
              newsCnt: newsArt.newsCnt,
              newsUrl: newsArt.newsUrl,
            );
          }),
    );
  }
}
