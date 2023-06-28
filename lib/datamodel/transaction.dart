class Transaction {
  final String id;
  final String title;
  final String subtitle;
  final double amount;
  final transType;
  Transaction({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.transType,
  });
}
