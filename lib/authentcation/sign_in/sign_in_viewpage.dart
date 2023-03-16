import 'package:flutter/material.dart';
import 'package:youth_care_application/authentcation/widgets/CustomTextFormFieldLogin.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:sizer/sizer.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:dashed_line/dashed_line.dart';

class SignIn extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController emailcontroller = new TextEditingController();
  final TextEditingController passwordcontroller = new TextEditingController();
  final TextEditingController namecontroller = new TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
     /* appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      color: Color(0xFF184C72).withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.person_outline_outlined,
                  color: Color(0xFF184C72),
                ),
              ],
            ),
            Text(
              'Welcome back ,',
              style: TextStyle(
                  fontSize: 12, color: Color(0xFF184C72).withOpacity(0.7)),
            ),
          ],
        ),
      ),*/
      body: Container(
        /*      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              Color(0xFF14436d),
              Color(0xFF0f3a68),
          //    secondrycolor,
              //Color(0xFF387b87),
              Color(0xFF419aaa),
              Color(0xFF6297bd),


            ],
                stops: [
                  0.2,
                  0.2,
                  0.1,
                  0.2,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
          ),
        ),*/
        height: MediaQuery.of(context).size.height / 1.02,
        width: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Colors.grey.shade200,
        ),
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              SimpleShadow(
                child: Image.asset(
                  'assest/login_sticker.png',
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
                opacity: 0.6,
                // Default: 0.5
                color: Colors.black.withOpacity(0.5),
                // Default: Black
                offset: Offset(5, 5),
                // Default: Offset(2, 2)
                sigma: 4, // Default: 2
              ),
              Text('Login',
                  style: TextStyle(
                      color: primarycolor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30,
              ),
              custom_textformfield(isPasswordtype: false,hintText: '123456789@o6u.edu',icon: Icons.person_outline_outlined,),
              SizedBox(
                height: 30,
              ),
              custom_textformfield(isPasswordtype: true,hintText: '*************',icon: Icons.password_rounded,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(width: 250,),
                TextButton(onPressed: (){},child: Text("forget password?",style: TextStyle(color: primarycolor)),)
              ],),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 35.0, right: 20.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
                Text("OR"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 35.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
              ]),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You Don’t have an account ?'),
                  TextButton(onPressed: (){},child: Text('Sign Up',style: TextStyle(color: primarycolor)),)

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
