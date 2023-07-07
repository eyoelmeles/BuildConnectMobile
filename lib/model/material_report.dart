class MaterialReport {
  String type;
  String unit;
  String delivered;
  DateTime toDate;
  bool isExpanded;

  MaterialReport({
    required this.type,
    required this.unit,
    required this.delivered,
    required this.toDate,
    this.isExpanded = false,
  });
}
