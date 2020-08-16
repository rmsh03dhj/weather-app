import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/today_card.dart';
import 'package:weather_app/weather.dart';
import 'package:weather_app/weather_card.dart';
import 'package:weather_app/weathers.dart';

class Dashboard extends StatefulWidget {
  static const String route = '/dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Weathers weathers = Weathers.fromJson(map);
  Color backgroundColor;
  void _onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    setState(() {
      Weather oldWeather = weathers.weather[oldIndex];
      weathers.weather.removeAt(oldIndex);
      weathers.weather.insert(newIndex, oldWeather);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather App")),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: TodayCard(weathers.weather[0]),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ReorderableListView(
                onReorder: _onReorder,
                children: List.generate(
                  weathers.weather.length,
                  (index) {
                    return WeatherCard(
                      weathers.weather,
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
