part of 'cubit_weather.dart';

@immutable
abstract class CubitWeatherState {
  const CubitWeatherState();
}

class CubitWeatherInitial extends CubitWeatherState {
  const CubitWeatherInitial();
}

class CubitWeatherLoading extends CubitWeatherState {
  const CubitWeatherLoading();
}

class CubitWeatherLoaded extends CubitWeatherState {
  final Weather weather;
  const CubitWeatherLoaded(this.weather);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CubitWeatherLoaded && o.weather == weather;
  }

  @override
  int get hashCode => weather.hashCode;

}

class CubitWeatherError extends CubitWeatherState {
  final String message;
  const CubitWeatherError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CubitWeatherError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}