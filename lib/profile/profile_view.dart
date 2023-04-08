import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_controller.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_viewpage.dart';
import 'package:youth_care_application/authentcation/widgets/custom_button_login.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/profile/profile_controller.dart';
import 'package:youth_care_application/screen_control_indcator.dart';

class ProfileView extends GetWidget<profile_controller> {

  @override
  Widget build(BuildContext context) {
    return
    Container(
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.circular(60),
        //  color: Colors.grey.shade200,

        gradient: LinearGradient(
            colors: [
              gradientColorA,
              gradientColorB,
            ],
            /*stops: [
                0.2,
                0.2,
                0.1,
                0.2,
              ],*/
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft),
      ),

      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding:
          const EdgeInsets.only(top: 38, right: 15, left: 15, bottom: 0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 120,right: 120,top:250,bottom: 250),
              child: Center(      //your code goes here
                child: CustomButton(text: 'sign out',OnPress: (){
                  Get.offAll(SignIn());


                },),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
