import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

class Article {
  Article({
    required this.title,
    this.description,
    this.urlToImage,
    required this.publishedAt,
  });

  String title;
  String? description;
  String? urlToImage;
  DateTime publishedAt;

  factory Article.fromJson(Map<String, dynamic> json) => Article(

    title: json["title"],
    description: json["description"],
    urlToImage: json["urlToImage"],
    publishedAt: DateTime.parse(json["publishedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "urlToImage": urlToImage,
    "publishedAt":  DateFormat('EEE d MMM').format(DateTime.now())
  };
}