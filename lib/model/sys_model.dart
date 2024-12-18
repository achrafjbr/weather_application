class SysModel {
  String country;
  String sunrise;
  String sunset;
  String id;

  SysModel({
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory SysModel.fromJson(Map<String, dynamic> sysJson) => SysModel(
        id: sysJson['id'],
        country: sysJson['country'],
        sunrise: sysJson['sunrise'],
        sunset: sysJson['sunset'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'country': country,
        'sunrise': sunrise,
        'sunset': sunset,
      };
}
