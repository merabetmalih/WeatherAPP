import 'package:http/http.dart' as http;

String apiKey = "64fcf67e640aa5f471cc5b44340af7ba";

class WeatherApi {
  Future<http.Response> getWeather(double lat, double long) async {
    print(
        "https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=hourly,minutely&appid=$apiKey&cnt=5&units=metric");
    http.Response response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=hourly,minutely&appid=$apiKey&cnt=5&units=metric"));
    return response;
  }

  Future<http.Response> getLatLog(String city) async {
    http.Response response = await http.get(Uri.parse(
        "http://api.openweathermap.org/geo/1.0/direct?q=$city&limit=5&appid=$apiKey&cnt=5&units=metric"));

    return response;
  }
}
