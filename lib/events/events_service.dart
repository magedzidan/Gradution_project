import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class EventsService{
  final CollectionReference _categorycollectionRef =
  FirebaseFirestore.instance.collection('events');

  Future <List<QueryDocumentSnapshot>> geteventservice() async{
    var value=await _categorycollectionRef.get();
    return value.docs;
  }

}