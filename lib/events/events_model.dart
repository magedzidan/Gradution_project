import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

class EventsModel {
  EventsModel({
    required this.title,
    required this.description,
    this.urlToImage,
    required this.date,
  });

  String title;
  String? description;
  String? urlToImage;
  String? date;

  factory EventsModel.fromJson(Map<String, dynamic> json) => EventsModel(
    title: json["title"],
    description: json["description"],
    urlToImage: json["urlToImage"],
   // date: DateTime.parse(json["date"]),
    date:json['date']
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "urlToImage": urlToImage,
    //"date":  DateFormat('E,MMM MM h:mm a').format(date)//here goes the datedtime u choose)
    "date":date
  };
}