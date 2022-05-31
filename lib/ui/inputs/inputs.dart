import 'package:flutter/material.dart';

class Inputs {

  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    required IconData icon,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.3),          
        )
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.3),          
        )
      ),
      hintText: hintText,
      labelText: labelText,
      prefixIcon: Icon(icon, color: Colors.grey,),
      hintStyle: const TextStyle(
        color: Colors.grey
      ),
      labelStyle: const TextStyle(
        color: Colors.grey
      )
    );
  }

}