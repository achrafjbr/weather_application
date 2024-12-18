class CloudsModel {
  String all;

  CloudsModel({
    required this.all,
  });

  factory CloudsModel.fromJson(Map<String, dynamic> cloudsJson) => CloudsModel(
        all: cloudsJson['all'],
      );

  Map<String, dynamic> toJson() => {
        'all': all,
      };
}
