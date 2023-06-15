class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'SUB 1', 'COMPUTER SCIENCE', '17 Nov 2021', '20 Nov 2021', 'Pending'),
  AssignmentData(
      'SUB 2', 'COMPUTER SCIENCE', '11 Nov 2021', '20 Nov 2021', 'Submitted'),
  AssignmentData('SUB 3', 'Mobile App', '21 Oct 2021', '27 Oct 2021',
      'Not Submitted'),
  AssignmentData(
      'SUB 4', 'Algebra', '17 Sep 2021', '30 Sep 2021', 'Pending'),
];
