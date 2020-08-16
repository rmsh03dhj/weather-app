import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/detail_view.dart';
import 'package:weather_app/domain/entities/weather_entity.dart';
import 'package:weather_app/weather.dart';
import 'package:weather_icons/weather_icons.dart';

class TodayCard extends StatefulWidget {
  final WeatherEntity weather;

  TodayCard(this.weather);

  @override
  _TodayCard createState() => _TodayCard();
}

class _TodayCard extends State<TodayCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailedWeatherView.route);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Today - ${DateFormat("MMM dd").format(DateTime.now())}",style: TextStyle(fontSize: 16),
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
                        "RainFall Chances: ${widget.weather.chanceOfRain}"),
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

Map<String, IconData> weatherIconMap = {
  "snow": WeatherIcons.snow,
  "heavyRain": WeatherIcons.rain,
  "lightRain": WeatherIcons.raindrops,
  "showers": WeatherIcons.raindrop,
  "heavyCloud": WeatherIcons.cloudy,
  "lightCloud": WeatherIcons.cloud_refresh,
  "clear": WeatherIcons.day_sunny,
  "hail": WeatherIcons.hail,
  "thunderstorm": WeatherIcons.thunderstorm,
};

enum WeatherCondition {
  snow,
  hail,
  thunderstorm,
  heavyRain,
  lightRain,
  showers,
  heavyCloud,
  lightCloud,
  clear,
  unknown
}
