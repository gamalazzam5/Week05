import 'courses_class.dart';

class Student {
  String name;
  int age;
  int id;
  List<Courses> courses = [];
  Student({required this.name, required this.age, required this.id});

  void enroll(Courses course) {
    courses.add(course);
    print("$name has been Enrolled  in ${course.courseName}");
  }

  void displayInfo() {
    print('''
Student name: $name 
Student ID: $id
Student Age: $age
-------Courses Enrolled -------
''');
    for (var course in courses) {
      print("---${course.courseName}---\n");
    }
  }
}
