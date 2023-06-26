import 'package:flutter/material.dart';

class TextFieldBuilder extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final bool position;
  const TextFieldBuilder({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: SizedBox(
        height: 50,
        child: TextField(
          textAlign: position ? TextAlign.center : TextAlign.left,
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
              borderSide: const BorderSide(
                width: 1.5,
                style: BorderStyle.solid,
                color: Colors.black,
              ),
            ),
            filled: true,
            hintText: hinttext,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              height: 1,
            ),
          ),
          controller: controller,
        ),
      ),
    );
  }
}
