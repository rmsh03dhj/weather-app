import 'package:flutter/material.dart';
import 'package:weather_app/src/app/pages/dashboard/dashboard_page.dart';
import 'package:weather_app/src/app/pages/detailed_weather_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: DashboardPage(),
      routes: routes,
    );
  }
}

final routes = <String, Widget Function(BuildContext)>{
  DetailedWeatherView.route: (_) => DetailedWeatherView(),
  DashboardPage.route: (_) => DashboardPage(),
};
