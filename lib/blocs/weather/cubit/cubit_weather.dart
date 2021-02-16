import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/weather.dart';
import '../weather_repository.dart';

part 'cubit_weather_state.dart';

class CubitWeather extends Cubit<CubitWeatherState> {
  final WeatherRepository _weatherRepository;

  CubitWeather(this._weatherRepository) : super(CubitWeatherInitial());

  Future<void> getWeather(String cityName) async {
    try {
      emit(const CubitWeatherLoading());
      final weather = await _weatherRepository.fetchWeather(cityName);
      emit(CubitWeatherLoaded(weather));
    } on NetworkException {
      emit(const CubitWeatherError("Couldn't fetch weather. Is the device online?"));
    }
  }
}