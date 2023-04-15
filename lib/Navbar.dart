import 'package:flutter/material.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_controller.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/booking/booking_view.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/events/events_view.dart';
import 'package:youth_care_application/profile/profile_view.dart';
import 'package:youth_care_application/screen_control_indcator.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:youth_care_application/tournament/tournament_view.dart';
import 'authentcation/sign_in/sign_in_viewpage.dart';

class BottomNavBar extends StatelessWidget {

  final authService =Get.find<ScreenControlIndcator>();

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
         eventsView(),
        BookingView(),
        TournamentView(),
        ProfileView(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems(){
      return [
      /*  ImageIcon(
          AssetImage('assest/icons/home_outilned.png'),
          size: 120,
        ),*/
        PersistentBottomNavBarItem(
          icon:Icon(
            Icons.house_outlined,
          ),
          inactiveIcon: Icon(
            Icons.house,
          ),
          title: ("Events"),
          activeColorPrimary: primarycolor,
          inactiveColorPrimary: Colors.grey,
        ), PersistentBottomNavBarItem(
          icon:Icon(
            Icons.event_available,
          ),
          inactiveIcon: Icon(
            Icons.event,
          ),
          title: ("Booking"),
          activeColorPrimary: primarycolor,
          inactiveColorPrimary: Colors.grey,
        ),

     /*   PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          inactiveIcon: const Icon(
            Icons.add_outlined,
            color: primarycolor,
          ),
          //F1F7F0
          activeColorPrimary: Color(0xFFF7F5F4),
          inactiveColorPrimary: primarycolor,
        ),*/

        PersistentBottomNavBarItem(
          icon:Icon(
            Icons.emoji_events_outlined,
          ),
          inactiveIcon: Icon(
            Icons.emoji_events,
          ),
          title: ("Tournaments"),
          activeColorPrimary: primarycolor,
          inactiveColorPrimary: Colors.grey,
        ),PersistentBottomNavBarItem(
          icon:Icon(
            Icons.person_pin_circle_outlined,
          ),
          inactiveIcon: Icon(
            Icons.person_pin,
          ),
          title: ("Profile"),
          activeColorPrimary: primarycolor,
          inactiveColorPrimary: Colors.grey,
        ),

      ];


    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      screens:_buildScreens(),
      items: _navBarsItems(),
      controller: controller,
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
      NavBarStyle.style3,//12,3,13,14,19


    );
  }
}
