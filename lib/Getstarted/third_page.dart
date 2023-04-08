import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youth_care_application/authentcation/sign_in/sign_in_viewpage.dart';

import '../pages_control_view.dart';
import 'getstarted_widgets/custom_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPage(
        photo: 'assest/third.jpg',
        text1: 'go',
        text2: 'start',
        ontap: (){
          Get.offAll(ControlView());
        },
      ),
    );
  }
}
