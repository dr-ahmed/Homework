/*
4. Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name.
*/

class WeatherReport {
  final List<Map<String, dynamic>> _weatherData = [
    {"city": "Paris", "temperature": 15, "humidity": 80},
    {"city": "New York", "temperature": 22, "humidity": 65},
    {"city": "Tokyo", "temperature": 18, "humidity": 70},
    {"city": "Cairo", "temperature": 30, "humidity": 40},
  ];

  Map<String, dynamic> getWeatherDetails(String cityName) {
    return _weatherData.firstWhere(
      (data) => data["city"].toLowerCase() == cityName.toLowerCase(),
    );
  }
}

void main() {
  WeatherReport report = WeatherReport();
  var weather = report.getWeatherDetails("Paris");

  print("Weather in ${weather["city"]}:");
  print("Temperature: ${weather["temperature"]}°C");
  print("Humidity: ${weather["humidity"]}%");
}
