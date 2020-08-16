import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/src/app/pages/detailed_weather_page.dart';
import 'package:weather_app/src/domain/entities/weather.dart';
import 'package:weather_icons/weather_icons.dart';

import '../utils.dart';

class WeatherCard extends StatefulWidget {
  final int index;
  final Key key;
  final List<Weather> weatherList;

  WeatherCard(this.weatherList, this.index, this.key);

  @override
  _WeatherCard createState() => _WeatherCard();
}

class _WeatherCard extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, DetailedWeatherView.route,
              arguments: widget.weatherList[widget.index]);
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          hourlyWeatherForcastIconMap[
                              widget.weatherList[widget.index].condition],
                          size: 36,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.weatherList[widget.index].day,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.weatherList[widget.index].condition,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            Icon(WeatherIcons.humidity, size: 16,),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  widget.weatherList[widget.index].humidity),
                            ),
                          ]),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.weatherList[widget.index].minTemp +
                                  " \u2103 /" +
                                  widget.weatherList[widget.index].maxTemp +
                                  " \u2103",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
