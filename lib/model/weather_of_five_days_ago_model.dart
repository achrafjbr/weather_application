class WeatherOfFiveDaysAgoModel {
  String date;
  String temperature;

  WeatherOfFiveDaysAgoModel({
    required this.date,
    required this.temperature,
  });

  factory WeatherOfFiveDaysAgoModel.fromJson(
          Map<String, dynamic> fiveDaysJson) =>
      WeatherOfFiveDaysAgoModel(
        date: fiveDaysJson['date'],
        temperature: fiveDaysJson['temperature'],
      );

  Map<String, dynamic> toJson()=>{
    'date':date,
    'temperature':temperature,
  };
}
