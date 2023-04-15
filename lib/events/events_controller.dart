import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/events/events_model.dart';
import 'package:youth_care_application/events/events_service.dart';

class EventsController extends GetxController{
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading  =ValueNotifier(false);

  List<EventsModel> get eventsModel => _eventsModel;
  List<EventsModel> _eventsModel = [];

  EventsService Events = EventsService();

EventsController(){
  getEvents();
}

getEvents() async{

  _loading.value=true;
  Events.geteventservice().then((value) {

     for(int i=0;i<value.length;i++){
       _eventsModel.add(EventsModel.fromJson(value[i].data() as Map<String,dynamic>));
       _loading.value=false;
     }
     update();

  });

}

}