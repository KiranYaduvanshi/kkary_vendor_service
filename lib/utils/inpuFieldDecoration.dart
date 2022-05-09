import 'package:flutter/material.dart';

class CustomeInputDecoration {
  static InputDecoration formDecoration(String hint, String lable) {
    return InputDecoration(
      fillColor: Colors.white,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(50.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.0),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.0),
        borderSide: BorderSide.none,
      ),
      hintText: hint,
      labelText: lable,
    );
  }
}
