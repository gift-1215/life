import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,

    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context){
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration:  InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 76, 74, 74)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: const Color.fromARGB(255, 184, 178, 178),
                    filled: true,
                    hintText: hintText,
                    hintStyle: const TextStyle(color: Color.fromARGB(255, 118, 116, 116),),
                  ),
                ),
              );
  }
}