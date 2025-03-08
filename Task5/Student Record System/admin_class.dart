import 'atendance_class.dart';
import 'courses_class.dart';
import 'grade_class.dart';
import 'student_class.dart';

class Admin {
  List<Student> students = [];
  List<Courses> courses = [];

  void addStudent(Student student) {
    students.add(student);
    print(" Student ${student.name} added!");
  }

  void addCourse(Courses course) {
    courses.add(course);
    print(" Course ${course.courseName} added!");
  }

  void assignGrade(Student student, Courses course, String grade) {
    Grade newGrade = Grade(student, course, grade);
    newGrade.displayGrade();
  }

  void getAttendance(Student student, Courses course, bool present) {
    Attendance attendance =
        Attendance(student: student, course: course, present: present);
    attendance.displayAttendance();
  }
}
