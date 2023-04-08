import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_viewpage.dart';
import 'package:youth_care_application/authentcation/widgets/custom_button_login.dart';
import '../../constant/constance.dart';
import 'sign_up_firstpage.dart';
import 'signup_constans/signup_constant.dart';
import 'signup_widgets/signup_button.dart';
import 'signup_widgets/custom_textfield_signup.dart';

class SignupPage2 extends StatelessWidget {
  const SignupPage2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar:AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(onTap:(){
          Get.offAll(SignupPage());
        },child: Icon(Icons.arrow_back_sharp,color: Colors.grey[150],)),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              gradientColorA,
              gradientColorB,
            ],
          ),
        ),
        child: ListView(children: [
          const SizedBox(
            height: 18,
          ),
          const SizedBox(
            height: 18,
          ),
          Custom_textformfield(
            icon: Icons.format_list_numbered,
            isPasswordtype: false,
            hintText: 'المستوي الدراسي',
            labelText: 'Level',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.numbers,
            hintText: ' الكود الجامعي',
            labelText: 'ID',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.numbers_outlined,
            hintText: 'رقم التيلفون',
            labelText: 'mobile number',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.numbers,
            hintText: 'رقم الواتساب',
            labelText: 'what\'sapp Number',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.numbers,
            hintText: 'الرقم القومي',
            labelText: 'الرقم القومي',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.date_range,
            hintText: 'تاريخ الميلاد',
            labelText: 'birthday',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.home,
            hintText: 'العنوان',
            labelText: 'home address',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.person,
            hintText: 'صورة شخصية',
            labelText: 'personal photo',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.person,
            hintText: 'صورة الكارنيه',
            labelText: 'ID photo',
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20,top: 10),
            child: CustomButton(text: 'Register', OnPress: (){
              Get.to(()=>SignIn());
            }),
          ),
        ]),
      ),
    );
  }
}
