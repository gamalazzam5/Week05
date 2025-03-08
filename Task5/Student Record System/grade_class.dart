import 'courses_class.dart';
import 'student_class.dart';

class Grade {
  String grade;
  Student student;
  Courses course;

  Grade(this.student, this.course, this.grade);

  void displayGrade() => print(
      "Student ${student.name} get grade $grade in Course ${course.courseName}");
}
