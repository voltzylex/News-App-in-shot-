import 'package:flutter/material.dart';

class NewsContainerView extends StatelessWidget {
  NewsContainerView(
      {Key? key,
      required this.imgUrl,
      required this.newsHead,
      required this.newsDes,
      required this.newsUrl})
      : super(key: key);
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
              height: 400,
              width: MediaQuery.of(context).size.width,
              "https://images.hindustantimes.com/img/2022/12/27/550x309/Yogi_Adityanath_1672136541702_1672136541929_1672136541929.jpeg"),
          Text(
            "May move SC, says Yogi on HC's civic poll order. Akhilesh cries ‘injustice’",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
              "The chief minister's statement comes after the Lucknow bench of the Allahabad high court rejected the state government's draft notification on the civic polls and ordered holding the elections without reservation for the OBCs."),
          Spacer(),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [ ElevatedButton(
             onPressed: () {},
             child: Text("Read More"),
           ),],
         ),
        ],
      ),
    );
  }
}
