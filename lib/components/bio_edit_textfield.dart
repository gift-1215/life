import 'package:flutter/material.dart';

class BioEditTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const BioEditTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            hintText,
            style: const TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 76, 74, 74)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.black,
            filled: true,
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          style:const TextStyle(color: Colors.white,fontSize: 25),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.width * 0.05,
      ),
    ]);
  }
}
