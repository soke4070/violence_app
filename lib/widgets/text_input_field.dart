import 'package:flutter/material.dart';
import 'package:violence_app/widgets/constants.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isObscure;
  final IconData icon;
  final Color color;
  final  Color  labelColor;
  const TextInputField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.isObscure = false,
    required this.icon, 
    required this.color, required this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText, 
    
        prefixIcon: Icon(icon, color: Colors.white,),
     
        labelStyle: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: borderColor,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: borderColor,
            )),
      ),
      obscureText: false,
    );
  }
}