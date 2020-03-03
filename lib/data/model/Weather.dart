class Weather{
  final temp;
  final pressure;
  final  humidity;
  final temp_max;
  final  temp_min;
  final  city_name;


  double get getTemp => temp-272.5;
  double get getMaxTemp => temp_max-272.5;
  double get getMinTemp=> temp_min -272.5;

  Weather(this.temp, this.pressure, this.humidity, this.temp_max, this.temp_min,this.city_name);

  factory Weather.fromJson(Map<String, dynamic> json,Map<String, dynamic> json2){
    return Weather(
        json["temp"],
        json["pressure"],
        json["humidity"],
        json["temp_max"],
        json["temp_min"],
        json2["name"]
    );
  }
}