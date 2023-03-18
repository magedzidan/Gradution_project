import 'package:flutter/material.dart';
import 'package:youth_care_application/constant/constance.dart';

/*
class MyThemes {
  static Color gradientColorA = Color(0xFF327182);
  static Color gradientColorB = Color(0xFF11406C);

  ThemeData getTheme() {
    Container(
    decoration: BoxDecoration(
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
    ),
  );
    return _lightTheme;
  }
  final _lightTheme = ThemeData(
    accentColor: Colors.black,
    backgroundColor: const Color(0xFFE5E5E5),
    brightness: Brightness.light,
    buttonColor: Colors.blue,
    dividerColor: Colors.white54,
    disabledColor: Colors.grey,
    floatingActionButtonTheme:
    FloatingActionButtonThemeData(foregroundColor: Colors.white),
    fontFamily: 'Simplifica',
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
  );
}
*/

class GradientBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              gradientColorA,
             gradientColorB,
            ], /*stops: [
              0.2,
              0.2,
              0.1,
              0.2,
            ],*/ begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
        ),
      ],
    );
  }
}
