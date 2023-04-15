import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

class EventsModel {
  EventsModel({
    required this.title,
    required this.description,
    this.urlToImage,
    required this.publishedAt,
  });

  String title;
  String? description;
  String? urlToImage;
  DateTime publishedAt;

  factory EventsModel.fromJson(Map<String, dynamic> json) => EventsModel(

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