import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_viewpage.dart';
import 'package:youth_care_application/authentcation/widgets/custom_button_login.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'signup_secondpage.dart';
import 'signup_constans/signup_constant.dart';
import 'signup_widgets/signup_button.dart';
import 'signup_widgets/custom_textfield_signup.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar:AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(onTap:(){
          Get.offAll(SignIn());
        },child: Icon(Icons.arrow_back_sharp,color: Colors.grey[150],)),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
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
            height: 38,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              'Register',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Custom_textformfield(
            icon: Icons.person,
            isPasswordtype: false,
            hintText: 'الاسم',
            labelText: 'userName',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.lock,
            hintText: 'كلمة السر',
            labelText: 'password',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.house_sharp,
            hintText: 'الكلية',
            labelText: 'college',
          ),
          Custom_textformfield(
            isPasswordtype: false,
            icon: Icons.email,
            hintText: 'الايميل الخاص بك',
            labelText: 'email address',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(text: 'Continue', OnPress: (){
            Get.to(()=>SignupPage2());
          }),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'already have an account?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                GestureDetector(
                  onTap: () {},
                  child:  Text(
                    ' sign in',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
