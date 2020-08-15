import 'package:flutter/material.dart';
import 'package:weather_app/bloc/bloc_provider.dart';
import 'package:weather_app/bloc/weather_bloc.dart';
import 'package:weather_app/dashboard.dart';
import 'package:weather_app/detail_view.dart';
import 'package:weather_app/weather.dart';
import 'package:weather_app/weathers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Weathers weathers = Weathers.fromJson(map);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
      bloc: WeatherBloc(),
      child: MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black45,
            body: DetailedWeatherView(weathers.weather[0])),
      ),
    );
  }
}
