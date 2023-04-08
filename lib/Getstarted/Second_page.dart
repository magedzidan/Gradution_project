import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:youth_care_application/Getstarted/third_page.dart';

import 'getstarted_widgets/custom_page.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPage(
      photo: 'assest/second.jpg',
      text1: 'cr7',
      text2: 'next',
      ontap: () {
        Get.to(() => const ThirdPage());
      },
    ));
  }
}
