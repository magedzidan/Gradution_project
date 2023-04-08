import 'package:flutter/material.dart';
import '../../constant/constance.dart';

class CustomPage extends StatelessWidget {
  CustomPage({this.photo, this.text1, this.text2, this.ontap});
  String? photo;
  String? text1;
  String? text2;
  VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [gradientColorA, gradientColorB],
        ),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
            margin: const EdgeInsets.all(77),
            width: 200,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(photo!),
              ],
            )),
        Text(
          text1!,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Container(
          width: 90,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFF179d9e).withAlpha(210),
            borderRadius: BorderRadius.circular(30),
          ),
          child: GestureDetector(
            onTap: ontap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text2!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
