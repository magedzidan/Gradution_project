import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


import 'Second_page.dart';
import 'getstarted_widgets/custom_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPage(
      photo: 'assest/first.jpg',
      text1: 'booking',
      text2: 'next',
      ontap: () {
        Get.to(() => const SecondPage());
      },
    ));
  }
}
