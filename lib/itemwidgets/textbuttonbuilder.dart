import 'package:flutter/material.dart';

class TextButtonBuilder extends StatelessWidget {
  final String title;
  final Function handler;
  const TextButtonBuilder({
    super.key,
    required this.title,
    required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        handler;
      },
      child: Text(
        title,
        style: const TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 18,
          color: Color(
            0xff019AD6,
          ),
        ),
        textAlign: TextAlign.center,
      ),
    );
    ;
  }
}
