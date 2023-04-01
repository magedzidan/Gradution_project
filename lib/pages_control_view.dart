import 'package:flutter/material.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_controller.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/events/events_view.dart';
import 'package:youth_care_application/screen_control_indcator.dart';

import 'authentcation/sign_in/sign_in_viewpage.dart';

class ControlView extends GetWidget<sign_in_controller> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get
          .find<sign_in_controller>()
          .user == null)
          ? SignIn()
          : GetBuilder<ScreenControlIndcator>(
          builder: (controller)=>Scaffold(
            bottomNavigationBar: _BottomNavigationBar(),
            body: controller.current_screen,
          ),
      );
    });
  }

  _BottomNavigationBar() {
    return GetBuilder<ScreenControlIndcator>(
      builder: (controller)=>BottomNavigationBar(
        elevation: 1,
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: gradientColorB, // <-- This works for fixed
        selectedItemColor: primarycolor,
        unselectedItemColor: Colors.grey.shade400,
        items: const [
          BottomNavigationBarItem(
           /*   activeIcon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Events"),
              ),*/
              icon: Icon(Icons.event),
              label: ''),

          BottomNavigationBarItem(
     /*         activeIcon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Books"),
              ),*/
              icon: Icon(Icons.book),
              label: ''),

          BottomNavigationBarItem(
/*              activeIcon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Tournament"),
              ),*/
              icon: Icon(Icons.emoji_events_outlined),
              label: ''),

          BottomNavigationBarItem(
  /*            activeIcon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Profile"),
              ),*/
              icon: Icon(Icons.person_outline_outlined),
              label: ''),
        ],
        currentIndex: controller.navigatorvalue,
        onTap: (index) {
          controller.ChangeScreen(index);
        },

      )
    );
  }
}
