import 'package:flutter/material.dart';

Container signupButton(String? text) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: double.infinity,
    height: 35,
    decoration: BoxDecoration(
      color: Colors.orange.withOpacity(0.8),
      borderRadius: BorderRadius.circular(24),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
