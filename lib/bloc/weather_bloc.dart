import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/bloc/bloc_provider.dart';
import 'package:weather_app/weather_card.dart';

class WeatherBloc implements BlocBase {
  final _backgroundColorController = BehaviorSubject<Color>();

  Stream<Color> get colorStream => _backgroundColorController.stream;

  void changeBackgroundColor(Color color) {
    _backgroundColorController.add(color);
    print("printing from bloc");
    print(_backgroundColorController.value);
  }

  @override
  void dispose() {
    _backgroundColorController.close();
  }
}

