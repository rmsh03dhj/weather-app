import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/detail_view.dart';
import 'package:weather_app/today_card.dart';
import 'package:weather_app/weather.dart';

class WeatherCard extends StatefulWidget {
  final int index;
  final Key key;
  final List<Weather> listItems;

  WeatherCard(this.listItems, this.index, this.key);

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
          Navigator.pushNamed(context, DetailedWeatherView.route);
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      weatherIconMap[widget.listItems[widget.index].condition],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.listItems[widget.index].day,
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
          ],
        ),
      ),
    );
  }
}
