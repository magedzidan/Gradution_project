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
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  GlobalKey<FormState> formstate=new GlobalKey<FormState>();
 void signupfirstpage(){
   var formdate=formstate.currentState;
   if(formdate!.validate()){
     formdate.save();
     Get.to(()=>SignupPage2());
   }
   else{
     print('not');
   }
 }
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
        child: Form(
          key: formstate,
          child: ListView(children: [
            const SizedBox(
              height: 68,
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
              height: 38,
            ),
            Custom_textformfield(
              controller: username,
              Onsaved: (val){
                  username.text=val;
              },
              Validtor: (value){

                if(username.text.isEmpty ){
                  return("Error Enter a valid name");
                }
              },
              icon: Icons.person,
              isPasswordtype: false,
              hintText: 'الاسم',
              labelText: 'Full Name',
            ),
            Custom_textformfield(
              controller: email,

              Validtor: (value){
                String patttern = r'^([\d{9}\.]+@(o6u\.)+(edu\.)+(eg))$';
                RegExp regExp = new RegExp(patttern);
                if(value==null || regExp.hasMatch(value)==false){
                  return("Error Enter a valid email");
                }
              },
              Onsaved: (val){
                email.text=val;
              },
              isPasswordtype: false,
              icon: Icons.email,
              hintText: 'الايميل الخاص بك',
              labelText: 'email address',
            ),
            Custom_textformfield(
              controller: password,

              Validtor: (value){

                if(password.text.isEmpty ){
                  return("Error Enter a valid password");
                }
              },
              Onsaved: (val){
                password.text=val;
              },
              isPasswordtype: false,
              icon: Icons.lock,
              hintText: 'كلمة السر',
              labelText: 'password',
            ),


            const SizedBox(
              height:30,
            ),
            CustomButton(text: 'Continue', OnPress: (){
           var  respons= signupfirstpage();
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
      ),
    );
  }
}
