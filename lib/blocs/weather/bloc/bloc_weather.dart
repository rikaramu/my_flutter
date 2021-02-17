import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/weather.dart';
import '../weather_repository.dart';

part 'bloc_weather_state.dart';
part 'bloc_weather_event.dart';

class BlocWeather extends Bloc<BlocWeatherEvent, BlocWeatherState> {
  final WeatherRepository _weatherRepository;

  BlocWeather(this._weatherRepository) : super(BlocWeatherInitial());

  @override
  Stream<BlocWeatherState> mapEventToState(
    BlocWeatherEvent event,
  ) async* {
    if (event is GetWeather) {
      try {
        yield BlocWeatherLoading();
        final weather = await _weatherRepository.fetchWeather(event.cityName);
        yield BlocWeatherLoaded(weather);
      } on NetworkException {
        yield BlocWeatherError("Couldn't fetch weather. Is the device online?");
      }
    }
  }
}
