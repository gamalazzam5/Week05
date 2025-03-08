import 'admin_class.dart';
import 'courses_class.dart';

import 'student_class.dart';

void main() {
  Courses english = Courses(courseId: "ENGLISH13", courseName: "English");
  Courses oop = Courses(courseId: "OOP30", courseName: "OOP");
  Admin admin = Admin();
  admin.addCourse(oop);
  admin.addCourse(english);

  Student s1 = Student(name: "Gamal", age: 20, id: 30);
  Student s2 = Student(name: "Abdo", age: 19, id: 20);
  admin.addStudent(s1);
  admin.addStudent(s2);
  s1.enroll(oop);
  s2.enroll(english);
  admin.assignGrade(s1, oop, "A+");
  admin.assignGrade(s2, english, "A");
  admin.getAttendance(s1, oop, true);
  admin.getAttendance(s2, english, false);
  s1.displayInfo();
  s2.displayInfo();
}
