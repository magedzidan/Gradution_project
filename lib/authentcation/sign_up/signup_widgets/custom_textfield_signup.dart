import 'package:flutter/material.dart';

class Custom_textformfield extends StatelessWidget {
  var Validtor;

  var Onsaved;

  Custom_textformfield(
      {this.hintText,
      this.controller,
      this.icon,
      this.labelText,
      required this.isPasswordtype,
         this.Validtor,
        this.Onsaved});
  TextEditingController? controller;
  IconData? icon;
  String? hintText;
  String? labelText;
  bool isPasswordtype = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 15,
      ),
      child: TextFormField(
        onSaved: Onsaved,
        validator: Validtor,
        style: TextStyle(
          color: Colors.white.withOpacity(0.7),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.black.withOpacity(0.9),
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(0.3),
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(),
          ),
        ),
        controller: controller,
        obscureText: isPasswordtype,
        autocorrect: isPasswordtype,
        cursorColor: Colors.white,
        keyboardType: isPasswordtype
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
      ),
    );
  }
}
