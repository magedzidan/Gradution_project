import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_controller.dart';
import 'package:youth_care_application/events/events_controller.dart';
import 'package:youth_care_application/screen_control_indcator.dart';
class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => sign_in_controller());
    Get.lazyPut(() => ScreenControlIndcator(),fenix: true);
    Get.lazyPut(() => EventsController(),fenix: true);
  }


}