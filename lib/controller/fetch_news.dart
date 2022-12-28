import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
//https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=d9ee857193974766bda9fbab33d7cd0b
class FetchNews{

  static fetchNews()async{
    String http = "https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=d9ee857193974766bda9fbab33d7cd0b";
    Response response = await get(Uri.parse(http));
    Map body_data = jsonDecode(response.body);
    print(body_data);
  }
}