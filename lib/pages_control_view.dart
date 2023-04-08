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
      return (Get.find<sign_in_controller>().user == null)
          ? SignIn()
          : GetBuilder<ScreenControlIndcator>(
              builder: (controller) => Scaffold(
                bottomNavigationBar: _BottomNavigationBar(),
                body: controller.current_screen,
              ),
            );
    });
  }

  _BottomNavigationBar() {
    return GetBuilder<ScreenControlIndcator>(
        builder: (controller) => Container(
          color: gradientColorA,
          /*decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(60),
            //  color: Colors.grey.shade200,

            gradient: LinearGradient(
                colors: [
                  gradientColorA,
                  gradientColorB,
                ],
                stops: [
                0.2,
                0.7
              ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),

          ),*/
          child: ClipRRect(

                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular((20)),
                    bottomLeft: Radius.circular((20)),
                 ),
                child: BottomNavigationBar(

                  elevation: 0.0,
                  type: BottomNavigationBarType.fixed,
                  // Fixed
                  backgroundColor:  Colors.transparent,
                  // <-- This works for fixed
                  selectedItemColor: primarycolor,
                  unselectedItemColor: Colors.grey.shade400,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.event,
                          size: 27,
                        ),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.bookmark_add,
                          size: 27,
                        ),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.emoji_events_outlined,
                          size: 27,
                        ),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person,
                          size: 27,
                        ),
                        label: ''),
                  ],
                  currentIndex: controller.navigatorvalue,
                  onTap: (index) {
                    controller.ChangeScreen(index);
                  },
                ),
              ),
        ));
  }
}
