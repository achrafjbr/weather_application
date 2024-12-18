class WeatherModel {
  int id;
  String main;
  String description;
  String icon;

  WeatherModel({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> weatherJson) =>
      WeatherModel(
        id: weatherJson['id'],
        main: weatherJson['main'],
        description: weatherJson['description'],
        icon: weatherJson['icon'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'main': main,
        'description': description,
        'icon': icon,
      };
}
