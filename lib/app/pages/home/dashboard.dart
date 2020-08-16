import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:weather_app/app/pages/home/home_controller.dart';
import 'package:weather_app/data/repositories/data_users_repository.dart';
import 'package:weather_app/today_card.dart';


class Dashboard extends View {
  static const String route = '/dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends ViewState<Dashboard, HomeController> {
  _DashboardState() : super(HomeController(DataWeatherRepository()));

  void _onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    setState(() {
//      Weather oldWeather = weathers.weather[oldIndex];
//      weathers.weather.removeAt(oldIndex);
//      weathers.weather.insert(newIndex, oldWeather);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget buildPage() {
    return Scaffold(
      appBar: AppBar(title: Text("Weather App")),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: TodayCard(controller.weatherEntities[0]),
          ),
//          Expanded(
//            child: Container(
//              height: MediaQuery.of(context).size.height * 0.7,
//              child: ReorderableListView(
//                onReorder: _onReorder,
//                children: List.generate(
//                  weathers.weather.length,
//                  (index) {
//                    return WeatherCard(
//                      weathers.weather,
//                      index,
//                      Key('$index'),
//                    );
//                  },
//                ),
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
