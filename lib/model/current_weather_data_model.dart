import 'package:weather_application/model/clouds_model.dart';
import 'package:weather_application/model/main_model.dart';
import 'package:weather_application/model/sys_model.dart';
import 'package:weather_application/model/weather_model.dart';
import 'package:weather_application/model/wind_model.dart';

import 'coordination_model.dart';

class CurrentWeatherDataModel {
  CoordinationModel coordinationModel;
  List<WeatherModel> weatherModel;
  String base;
  MainModel mainModel;
  int visibility;
  CloudsModel clodsModel;
  int dateTime;
  SysModel sysModel;
  int timeZone;
  int id;
  String name;
  int cod;
  WindModel windModel;

  CurrentWeatherDataModel({
    required this.windModel,
    required this.coordinationModel,
    required this.weatherModel,
    required this.base,
    required this.mainModel,
    required this.visibility,
    required this.clodsModel,
    required this.dateTime,
    required this.sysModel,
    required this.timeZone,
    required this.id,
    required this.name,
    required this.cod,
  });

  factory CurrentWeatherDataModel.fromJson(
          Map<String, dynamic> currentWeatherJson) =>
      CurrentWeatherDataModel(
        windModel:  WindModel.fromJson(currentWeatherJson['wind']),
        coordinationModel:
            CoordinationModel.fromJson(currentWeatherJson['coord']),
        weatherModel: currentWeatherJson['weather']
            .map((w) => WeatherModel.fromJson(w))
            .toList(),
        base: currentWeatherJson['base'],
        mainModel: currentWeatherJson['main'],
        visibility: currentWeatherJson['visibility'],
        clodsModel: CloudsModel.fromJson(currentWeatherJson['clouds']),
        dateTime: int.parse(currentWeatherJson['dt']),
        sysModel: SysModel.fromJson(currentWeatherJson['sys']),
        timeZone: currentWeatherJson['timeZone'],
        id: currentWeatherJson['id'],
        name: currentWeatherJson['name'],
        cod: currentWeatherJson['cod'],
      );
}
