class MainModel {
  String temp;
  String feels_like;
  String temp_min;
  String temp_max;
  String pressure;
  String humidity;
  String sea_level;
  String grnd_level;

  MainModel({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
    required this.sea_level,
    required this.grnd_level,
  });

  factory MainModel.fromJson(Map<String, dynamic> mainJson) => MainModel(
        temp: mainJson['temp'],
        feels_like: mainJson['feels_like'],
        temp_min: mainJson['temp_min'],
        temp_max: mainJson['temp_max'],
        pressure: mainJson['pressure'],
        humidity: mainJson['humidity'],
        sea_level: mainJson['sea_level'],
        grnd_level: mainJson['grnd_level'],
      );

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feels_like,
        "temp_min": temp_min,
        "temp_max": temp_max,
        "pressure": pressure,
        "humidity": humidity,
        "sea_level": sea_level,
        "grnd_level": grnd_level,
      };
}
