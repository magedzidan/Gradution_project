import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_controller.dart';
class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => sign_in_controller());

  }


}