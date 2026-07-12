class Temperature {
  double _celsius = 0.0;

  double get celsius => _celsius;

  set celsius(double value) {
    if (value >= -273.15) {
      _celsius = value;
    } else {
      print('Error: Temperature cannot be below Absolute Zero (-273.15°C)');
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  var temp = Temperature();

  temp.celsius = 25.0;
  print('Celsius: ${temp.celsius}°C | Fahrenheit: ${temp.fahrenheit}°F');

  temp.celsius = -300.0;
  print('Celsius: ${temp.celsius}°C | Fahrenheit: ${temp.fahrenheit}°F');
}