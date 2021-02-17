import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit_weather.dart';
import 'model/weather.dart';
import 'weather_repository.dart';

class MyCubitWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitWeather(FakeWeatherRepository()),
      child: CupertinoPageScaffold(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: BlocConsumer<CubitWeather, CubitWeatherState>(
            listener: (context, state) {
              if (state is CubitWeatherError) {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoActionSheet(
                    title: Text(state.message),
                  ),
                );
              }
            },
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

Widget buildInitialInput() {
  return Center(
    child: CityInputField(),
  );
}

Widget buildLoading() {
  return Center(
    child: CupertinoActivityIndicator(),
  );
}

Column buildColumnWithData(Weather weather) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text(
        weather.cityName,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
      ),
      Text(
        // Display the temperature with 1 decimal place
        "${weather.temperatureCelsius.toStringAsFixed(1)} °C",
        style: TextStyle(fontSize: 80),
      ),
      CityInputField(),
    ],
  );
}

class CityInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: CupertinoTextField(
        onSubmitted: (value) => submitCityName(context, value),
        textInputAction: TextInputAction.search,
        // decoration: InputDecoration(
        //   hintText: "Enter a city",
        //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        //   suffixIcon: Icon(Icons.search),
        // ),
        padding: EdgeInsets.all(12.0),
        placeholder: 'Enter a city',
        suffix: Icon(CupertinoIcons.search),
        decoration: BoxDecoration(
          border: Border.all(
            color: CupertinoColors.systemBlue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  void submitCityName(BuildContext context, String cityName) {
    final weatherCubit = BlocProvider.of<CubitWeather>(context);
    weatherCubit.getWeather(cityName);
  }

  // void submitCityName(BuildContext context, String cityName) {
  //   final weatherBloc = BlocProvider.of<WeatherBloc>(context);
  //   weatherBloc.add(GetWeather(cityName));
  // }

}
