part of 'bloc_weather.dart';

@immutable
abstract class BlocWeatherEvent {}

class GetWeather extends BlocWeatherEvent {
  final String cityName;

  GetWeather(this.cityName);
}