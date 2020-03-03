import 'package:climaapp/data/model/Weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherRepository{
  Future<Weather> getWeather(String city) async{
    final result = await http.Client().get("https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2");
    if(result.statusCode != 200) throw Exception();
    return parseJson(result.body);
  }
  Weather parseJson(final response){
    final jsonDecoded = json.decode(response);
    final jsonWeather = jsonDecoded["main"];
    return Weather.fromJson(jsonWeather,jsonDecoded);
  }

}