import 'courses_class.dart';
import 'student_class.dart';

class Attendance {
  bool present;
  Student student;
  Courses course;
  Attendance(
      {required this.student, required this.course, required this.present});
  void displayAttendance() => print(
      "${student.name} was ${present ? "present" : "absent"} in course ${course.courseName}");
}
