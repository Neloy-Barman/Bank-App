import 'package:flutter/material.dart';

import './textbuttonbuilder.dart';

class TextWithButtonBuilder extends StatelessWidget {
  final String text;
  final String title;
  final Function handler;

  const TextWithButtonBuilder({
    super.key,
    required this.text,
    required this.title,
    required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Color(
              0xff363A40,
            ),
          ),
        ),
        TextButtonBuilder(
          title: title,
          handler: handler,
        ),
      ],
    );
  }
}
