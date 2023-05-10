
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/Getstarted/first_page.dart';
import 'package:youth_care_application/Navbar.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_viewpage.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/events/events_view.dart';
import 'package:youth_care_application/pages_control_view.dart';
import 'package:youth_care_application/helper/binding.dart';
import 'package:youth_care_application/screen_control_indcator.dart';
import 'package:youth_care_application/themes/main_theme.dart';
import 'authentcation/sign_up/sign_up_firstpage.dart';
import 'firebase_options.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(

      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primarycolor,
        fontFamily: 'Roboto',

          //navigationBarTheme: NavigationBarThemeData(backgroundColor: Colors.black)

        //scaffoldBackgroundColor: GradientBackground,

      ),
     home: Scaffold(
       body: ControlView(),
     ),
 /*     home: GetBuilder<ScreenControlIndcator>(
        builder: (controller) => Scaffold(
          body: eventsView(),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),*/

      // home:FirstPage(),

      /*routes:{
          "addnotes":(context) => addnotes()
        },*/

    );
  }

}