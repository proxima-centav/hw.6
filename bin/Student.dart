import 'Person.dart';
import 'subjects.dart';

class Student extends Person {
  Map<Subject, double> marks;

  Student({
    required String fullName,
    required int age,
    required bool isMarried,
    required this.marks,
  }) : super(fullName: fullName, age: age, isMarried: isMarried);

  void showMarks() {
    print('Student: $fullName');
    marks.forEach((subject, mark) {
      print('$subject: $mark');
    });
  }

  double calculateAverage() {
    double sum = 0;
    marks.forEach((subject, mark) {
      sum += mark;
    });
    return marks.isNotEmpty ? sum / marks.length : 0;
  }

  @override
  void introduce() {
    super.introduce();
    print('Average mark: ${calculateAverage().toStringAsFixed(1)}');
  }
}
