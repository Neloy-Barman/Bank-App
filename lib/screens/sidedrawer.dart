import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.5,
      child: const Center(
        child: Text(
          "Fuck You",
        ),
      ),
    );
  }
}
