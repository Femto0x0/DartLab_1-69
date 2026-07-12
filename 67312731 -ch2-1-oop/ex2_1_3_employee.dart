class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() => 0.0;
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() => monthlySalary;
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked) : super(name);

  @override
  double calculateSalary() => hourlyRate * hoursWorked;
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee('Alice', 30000.0),
    PartTimeEmployee('Bob', 150.0, 80),
  ];

  for (var emp in employees) {
    print('Employee: ${emp.name} | Salary: ${emp.calculateSalary()} THB');
  }
}