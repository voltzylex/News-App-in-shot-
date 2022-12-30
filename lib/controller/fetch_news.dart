import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
//https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=d9ee857193974766bda9fbab33d7cd0b
class FetchNews{
  static List sourcesId = [
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
  //Random element generator
  static fetchNews()async{
    var _random = new Random();
  var element = sourcesId[_random.nextInt(sourcesId.length)];
print(element);
    //Http request
    String http = "https://newsapi.org/v2/top-headlines?sources=${element}&apiKey=d9ee857193974766bda9fbab33d7cd0b";
    Response response = await get(Uri.parse(http));
    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    print(articles);
  }
}