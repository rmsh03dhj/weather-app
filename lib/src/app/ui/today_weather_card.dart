import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/src/app/pages/detailed_weather_page.dart';
import 'package:weather_app/src/domain/entities/weather.dart';
import 'package:weather_icons/weather_icons.dart';

import '../utils.dart';

class TodayWeatherCard extends StatefulWidget {
  final Weather weather;

  TodayWeatherCard(this.weather);

  @override
  _TodayCard createState() => _TodayCard();
}

class _TodayCard extends State<TodayWeatherCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailedWeatherView.route, arguments: widget.weather);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Text("Today - ${DateFormat("MMM dd").format(DateTime.now())}",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24),
                child: Icon(
                  weatherIconMap[widget.weather.condition],
                  size: 72,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.weather.condition.toString().toUpperCase(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.weather.minTemp+" \u2103 / "+widget.weather.maxTemp + " \u2103",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "RainFall Chances: ${widget.weather.chanceOfRain} %"),
                    )
                  ],
                ),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,0,8,0),
                    child: Icon(WeatherIcons.sunrise),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,0,8,0),
                    child: Text(widget.weather.sunrise),
                  )
                ],
              ),Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,0,8,0),
                    child: Icon(WeatherIcons.sunset),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,0,8,0),
                    child: Text(widget.weather.sunset),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}


