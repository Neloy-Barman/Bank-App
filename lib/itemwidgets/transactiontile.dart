import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final double amount;
  final bool trans_type;
  const TransactionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.trans_type,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
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
        child: const CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 20,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      trailing: FittedBox(
        child: Text(
          trans_type
              ? "\$${amount.toStringAsFixed(
                  2,
                )}"
              : "-\$${amount.toStringAsFixed(
                  2,
                )}",
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
