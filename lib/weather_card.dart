import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/bloc/bloc_provider.dart';
import 'package:weather_app/weather.dart';

import 'bloc/weather_bloc.dart';

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
    final weatherBloc = WeatherBloc();
    return BlocProvider<WeatherBloc>(
      bloc:weatherBloc,
      child: Card(
      margin: EdgeInsets.all(4),
      color: cardColorDependingOnDateMap[widget.listItems[widget.index].day],
      child: InkWell(
        onTap: (){
        weatherBloc.changeBackgroundColor(cardColorDependingOnDateMap[widget.listItems[widget.index].day]);
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
                    child: Image.asset(
                      widget.listItems[widget.index].icon,
                      scale: 15,
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
