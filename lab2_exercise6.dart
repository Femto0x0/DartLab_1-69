void main() {
  greet('Boat-sama');

  print(multiply(6, 7));

  print(calculateArea(width: 5.5, height: 10.0));
}

void greet(String name) {
  print('Hello, $name!');
}

int multiply(int a, int b) => a * b;

double calculateArea({required double width, required double height}) {
  return width * height;
}