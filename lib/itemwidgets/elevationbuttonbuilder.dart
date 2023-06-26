import 'package:flutter/material.dart';

class ElevationButtonBuilder extends StatelessWidget {
  final BuildContext con;
  final String title;
  final Function handler;
  const ElevationButtonBuilder({
    super.key,
    required this.con,
    required this.title,
    required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: InkWell(
        onTap: () => handler,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5,
            ),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(
                  255,
                  28,
                  59,
                  112,
                ),
                Color.fromARGB(
                  255,
                  0,
                  96,
                  147,
                ),
              ],
            ),
          ),
          height: MediaQuery.of(con).size.height * 0.045,
          width: MediaQuery.of(con).size.width * 0.35,
          child: Center(
            child: FittedBox(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
