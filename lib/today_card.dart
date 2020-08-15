import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/detail_view.dart';
import 'package:weather_app/weather.dart';

class TodayCard extends StatefulWidget {
  final Weather weather;

  TodayCard(this.weather);

  @override
  _TodayCard createState() => _TodayCard();
}

class _TodayCard extends State<TodayCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(4),
        color: cardColorDependingOnDateMap[widget.weather.day],
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, DetailedWeatherView.route);
          },
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  DateFormat("MMM dd").format(DateTime.now()),
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  widget.weather.icon,
                  scale: 5,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.weather.condition.toString(),
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '70 F',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 8),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '70 F',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

Map<String, Color> cardColorDependingOnDateMap = {
  "SUN":Colors.green[50],
  "MON":Colors.green[100],
  "TUE":Colors.green[200],
  "WED":Colors.green[300],
  "THU":Colors.green[400],
  "FRI":Colors.green,
  "SAT":Colors.green[600],
};
