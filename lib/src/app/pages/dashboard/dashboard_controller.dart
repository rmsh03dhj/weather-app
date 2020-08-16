
import 'package:weather_app/src/domain/entities/weather.dart';

import 'dahboard_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class DashboardController extends Controller {
  List<Weather> _weatherList;
  List<Weather> get weatherList => _weatherList;
  final DashBoardPresenter homePresenter;
  DashboardController(weatherRepo)
      :
        homePresenter = DashBoardPresenter(weatherRepo),
        super();

  @override
  void initListeners() {
    homePresenter.getWeathersOnNext = (List<Weather> weatherList) {
      _weatherList = weatherList;
      refreshUI();
    };
    homePresenter.getWeathersOnComplete = () {
      print('Weather Information retrieved');
    };

    homePresenter.getWeathersOnError = (e) {
      print('Could not retrieve weather information.');
      ScaffoldState state = getState();
      state.showSnackBar(SnackBar(content: Text(e.message)));
      _weatherList = null;
      refreshUI();
    };
  }

  void getAllWeathers() => homePresenter.getWeathers('sydney');

  @override
  void dispose() {
    homePresenter.dispose();
    super.dispose();
  }
}
