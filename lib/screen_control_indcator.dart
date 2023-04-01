import 'package:get/get.dart';
import 'package:youth_care_application/booking/booking_view.dart';
import 'package:youth_care_application/events/events_view.dart';
import 'package:flutter/material.dart';
import 'package:youth_care_application/profile/profile_view.dart';
import 'package:youth_care_application/tournament/tournament_view.dart';
class ScreenControlIndcator extends GetxController{
int _navigatorvalue=0;
get navigatorvalue=>_navigatorvalue;
Widget _current_screen=eventsView();
get current_screen=>_current_screen;

ChangeScreen(int value){
  _navigatorvalue=value;
  switch(value){
    case 0:{
      _current_screen=eventsView();
      break;
    }
    case 1:{
      _current_screen=BookingView();
      break;
    }
    case 2:{
      _current_screen=TournamentView();
      break;
    }
    case 3:{
      _current_screen=ProfileView();
      break;
    }
  }
  update();

}

}