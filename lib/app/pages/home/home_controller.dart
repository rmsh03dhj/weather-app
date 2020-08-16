import 'package:weather_app/domain/entities/weather_entity.dart';

import './home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeController extends Controller {
  List<WeatherEntity> _weatherEntities;
  List<WeatherEntity> get weatherEntities => _weatherEntities;
  final HomePresenter homePresenter;
  HomeController(weatherRepo)
      :
        homePresenter = HomePresenter(weatherRepo),
        super();

  @override
  void initListeners() {
    homePresenter.getWeathersOnNext = (List<WeatherEntity> weatherEntities) {
      _weatherEntities = weatherEntities;
      refreshUI();
    };
    homePresenter.getWeathersOnComplete = () {
      print('User retrieved');
    };

    homePresenter.getWeathersOnError = (e) {
      print('Could not retrieve user.');
      ScaffoldState state = getState();
      state.showSnackBar(SnackBar(content: Text(e.message)));
      _weatherEntities = null;
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
