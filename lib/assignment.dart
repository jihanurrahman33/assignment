abstract class Role {
  void displayRole();
}

class Person implements Role {
  final String? _name;
  final int? _age;
  final String? _address;
  Person( String name, int age,String address)
      : _name = name,
        _age = age,
        _address = address;

  String get name => _name!;
  int get age => _age!;
  String get address => _address!;

  @override
  void displayRole() {

  }
}

class Student extends Person {
  String? studentId;
  String? grade;
  List<double> courseScore;
  Student(super.name,super.age,super.address,this.studentId, this.grade, this.courseScore);
  @override
  displayRole() {
    print('Role: Student');
  }

  double avgScore() {
    double total = 0;
    for (var score in courseScore) {
      total = total + score;
    }
    return total/(courseScore.length);
  }
}

class Teacher extends Person{
  String? teacherId;
  List? coursesTaught;
  Teacher(super.name,super.age,super.address,this.teacherId,this.coursesTaught);
  @override
  displayRole(){
    print('Role: Teacher');
  }
  displayCoursesTaught(){
    print("Courses Taught:");
    for(var course in coursesTaught!){
      print('- $course');
    }
  }
}
class StudentManagementSystem{
  void run() {
    Student s1=Student('John Doe', 20, '123 Main Street', '1', 'A', [90,85,82]);
    Teacher t1=Teacher('Mrs. Smith', 35, '456 Oak St', '1', ['Math', 'English', 'Bangla']);

    print("Student Information:");
    s1.displayRole();
    print("Name: ${s1.name}");
    print("Age: ${s1.age}");
    print("Address: ${s1.address}");
    print("Average Score: ${s1.avgScore().toStringAsFixed(2)}");
    print("");


    print("Teacher Information:");
    t1.displayRole();
    print("Name: ${t1.name}");
    print("Age: ${t1.age}");
    print("Address: ${t1.address}");
    t1.displayCoursesTaught();
  }
}
void main() {
  StudentManagementSystem sms = StudentManagementSystem();
  sms.run();
}