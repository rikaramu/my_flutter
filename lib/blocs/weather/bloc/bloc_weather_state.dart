part of 'bloc_weather.dart';

@immutable
abstract class BlocWeatherState {
  const BlocWeatherState();
}

class BlocWeatherInitial extends BlocWeatherState {
  const BlocWeatherInitial();
}

class BlocWeatherLoading extends BlocWeatherState {
  const BlocWeatherLoading();
}

class BlocWeatherLoaded extends BlocWeatherState {
  final Weather weather;
  const BlocWeatherLoaded(this.weather);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is BlocWeatherLoaded && o.weather == weather;
  }

  @override
  int get hashCode => weather.hashCode;

}

class BlocWeatherError extends BlocWeatherState {
  final String message;
  const BlocWeatherError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is BlocWeatherError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}