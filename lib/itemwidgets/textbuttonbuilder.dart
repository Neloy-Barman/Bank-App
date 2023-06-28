import 'package:flutter/material.dart';

class TextButtonBuilder extends StatelessWidget {
  final String title;
  final Function handler;
  final bool underline;
  const TextButtonBuilder({
    super.key,
    required this.title,
    required this.handler,
    required this.underline,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        handler;
      },
      child: Text(
        title,
        style: TextStyle(
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none,
          fontSize: 18,
          color: const Color(
            0xff019AD6,
          ),
        ),
        textAlign: TextAlign.center,
      ),
    );
    ;
  }
}
