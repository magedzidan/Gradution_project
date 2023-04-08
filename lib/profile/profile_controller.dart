import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../authentcation/sign_in/sign_in_viewpage.dart';

class profile_controller extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Rxn<User> user = Rxn<User>();


  void onInit() {
    // TODO: implement onInit
    super.onInit();
    user?.bindStream(auth.authStateChanges());
  }

  void signout() async{
    await auth.signOut().then((value) => Get.offAll(()=>SignIn()));
  }

}