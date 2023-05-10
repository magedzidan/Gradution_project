import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:youth_care_application/Navbar.dart';
import 'package:youth_care_application/events/events_view.dart';
import 'package:youth_care_application/screen_control_indcator.dart';

class sign_in_controller extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> _user = Rxn<User>();

  get user => _user.value?.email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user?.bindStream(_auth.authStateChanges());
    print('hello ${_user.value?.email}');
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void signInWithEmailAndPassword(String email,String password) async {

    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Get.snackbar('Succeful login', '${value.user?.email}',
            snackPosition: SnackPosition.TOP);
        print(value);
        Get.offAll(GetBuilder<ScreenControlIndcator>(
          builder: (controller) => Scaffold(
            body: eventsView(),
            bottomNavigationBar: BottomNavBar(),
          ),
        ));
      });
    } catch (e) {
      print(e);
      Get.snackbar('Error Login account', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
  void signUp(String email,String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar('The password provided is too weak.', 'error',
            snackPosition: SnackPosition.BOTTOM);
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar('email-already-in-use', 'error',
            snackPosition: SnackPosition.BOTTOM);      }
    } catch (e) {
      print(e);
    }
  }
  void signout() async{
    await _auth.signOut();
  }
}
