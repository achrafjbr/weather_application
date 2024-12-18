class WindModel {
  String speed;
  String deg;
  String gust;

  WindModel({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  factory WindModel.fromJson(Map<String, dynamic> windJson) => WindModel(
        speed: windJson['speed'],
        deg: windJson['deg'],
        gust: windJson['gust'],
      );

  Map<String, dynamic> toJson() => {
        'speed': speed,
        'deg': deg,
        'gust': gust,
      };
}
