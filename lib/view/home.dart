import 'package:flutter/material.dart';

import '../controller/fetch_news.dart';
import 'NewsContainer.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  void initState() {
    FetchNews.fetchNews();

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 1),
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          FetchNews.fetchNews();
          return NewsContainerView(imgUrl: "https://images.pexels.com/photos/96627/pexels-photo-96627.jpeg?auto=compress&cs=tinysrgb&w=1600",newsDes: "News Description",newsHead: "News Heading",newsUrl: "$index",);
        },
      ),
    );
  }
}
