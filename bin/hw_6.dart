import 'Teacher.dart';
import 'Student.dart';
import 'subjects.dart';

void main() {
  Teacher teacher = Teacher(
    fullName: 'John Brown',
    age: 40,
    isMarried: true,
    experience: 10,
  );

  teacher.introduce();

  print('');

  Student student1 = Student(
    fullName: 'Adam White',
    age: 17,
    isMarried: false,
    marks: {
      Subject.math: 90,
      Subject.physics: 85,
      Subject.english: 92,
      Subject.history: 78,
    },
  );

  Student student2 = Student(
    fullName: 'Eva Green',
    age: 18,
    isMarried: false,
    marks: {Subject.math: 75, Subject.physics: 95, Subject.english: 88},
  );

  print('Student 1:');
  student1.introduce();
  student1.showMarks();

  print('');

  print('Student 2:');
  student2.introduce();
  student2.showMarks();
}
