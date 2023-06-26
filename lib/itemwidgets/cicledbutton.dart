import 'package:flutter/material.dart';

class CircledButton extends StatelessWidget {
  final IconData icon;
  final Color color1;
  final Color color2;
  final String title;

  CircledButton({
    super.key,
    required this.icon,
    required this.color1,
    required this.color2,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  color1,
                  color2,
                ],
              ),
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
