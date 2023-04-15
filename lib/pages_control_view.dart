import 'package:flutter/material.dart';
import 'package:youth_care_application/Navbar.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_controller.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/booking/booking_view.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/events/events_view.dart';
import 'package:youth_care_application/screen_control_indcator.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'authentcation/sign_in/sign_in_viewpage.dart';

class ControlView extends GetWidget<sign_in_controller> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<sign_in_controller>().user == null)
          ? SignIn()
          : GetBuilder<ScreenControlIndcator>(
              builder: (controller) => Scaffold(
                bottomNavigationBar: BottomNavBar(),

              ),
            );
    });
  }









}
