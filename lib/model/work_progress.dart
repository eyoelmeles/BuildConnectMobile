class WorkProgress {
  String typeOfWork;
  String location;
  String quantity;
  String unit;
  String remark;
  bool isExpanded;

  WorkProgress({
    required this.typeOfWork,
    required this.location,
    required this.unit,
    required this.quantity,
    required this.remark,
    this.isExpanded = false,
  });
}
