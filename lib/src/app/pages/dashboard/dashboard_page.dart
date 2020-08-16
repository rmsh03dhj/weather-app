import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:weather_app/src/app/pages/dashboard/dashboard_controller.dart';
import 'package:weather_app/src/app/ui/today_weather_card.dart';
import 'package:weather_app/src/app/ui/weather_card.dart';
import 'package:weather_app/src/data/repositories/weather_repository.dart';
import 'package:weather_app/src/domain/entities/weather.dart';

class DashboardPage extends View {
  static const String route = '/dashboard_page';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends ViewState<DashboardPage, DashboardController> {
  _DashboardState() : super(DashboardController(WeatherRepository()));

  List<Weather> weatherList = List();
  void _onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    setState(() {
      Weather oldWeather = weatherList[oldIndex];
      weatherList.removeAt(oldIndex);
      weatherList.insert(newIndex, oldWeather);
    });
  }

  @override
  void initState() {
    super.initState();
    controller.getAllWeathers();
  }

  @override
  Widget buildPage() {
    weatherList = controller.weatherList;

    return Scaffold(
      appBar: AppBar(title: Text("Weather App")),
      body: weatherList == null
          ? CircularProgressIndicator()
          : Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: TodayWeatherCard(weatherList[0]),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: ReorderableListView(
                      onReorder: _onReorder,
                      children: List.generate(
                        weatherList.length,
                        (index) {
                          return WeatherCard(
                            weatherList,
                            index,
                            Key('$index'),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
