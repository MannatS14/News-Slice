import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_slice/controller/newsFetch.dart';
import 'package:news_slice/view/widgets/NewsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    NewsFetch.newsFetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsContainer(
                imgUrl:
                    'https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg',
                newsHead: 'Meta unveils Llama 3 and real-time image generator',
                newsDes:
                    'Meta Platforms, formerly known as Facebook, has taken a significant stride in the field of generative AI with the release of its latest large language model, Llama 3, and a real-time image generator. The move comes as the tech giant aims to close the gap with market leader OpenAI in the rapidly evolving field of artificial intelligence.',
                newsUrl:
                    'https://www.businesstoday.in/technology/news/story/meta-unveils-llama-3-and-real-time-image-generator-see-details-426037-2024-04-19');
          }),
    );
  }
}
