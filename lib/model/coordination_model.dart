class CoordinationModel {
  double longitude;
  double latitude;

  CoordinationModel({
    required this.latitude,
    required this.longitude,
  });

  factory CoordinationModel.fromJson(Map<String, dynamic> coordinationJson) =>
      CoordinationModel(
        latitude: coordinationJson['lat'],
        longitude: coordinationJson['lon'],
      );

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longitude': longitude,
      };
}
