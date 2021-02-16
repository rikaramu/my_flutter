import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit_weather.dart';
import 'weather_repository.dart';

class MyBLoCWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitWeather(FakeWeatherRepository()),
      child: CupertinoPageScaffold(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: BlocBuilder<CubitWeather, CubitWeatherState>(
            builder: (context, state) {
              if (state is CubitWeatherInitial) {
                return buildInitialInput();
              } else if (state is CubitWeatherLoading) {
                return buildLoading();
              } else if (state is CubitWeatherLoaded) {
                return buildColumnWithData(state.weather);
              } else {
                // (state is WeatherError)
                return buildInitialInput();
              }
            },
          ),
        ),
      ),
    );
  }
}
