import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/weather.dart';

class DetailedWeatherView extends StatefulWidget {
  final Weather weather;
  DetailedWeatherView(this.weather);

  @override
  _DetailedWeatherView createState() => _DetailedWeatherView();
}

class _DetailedWeatherView extends State<DetailedWeatherView>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    print("I am herer");
    print(widget.weather.hourlyForcast.times.length);
    return CustomScrollView(slivers: [
      SliverAppBar(
        pinned: true,
        expandedHeight: 120,
        flexibleSpace: FlexibleSpaceBar(
          title: Text("Title"),
          background: Image.asset(widget.weather.icon, fit: BoxFit.cover),
        ),
        bottom: TabBar(
          tabs: [
            Tab(text: 'Hourly Forcast'),
            Tab(text: 'Other Details'),
          ],
          controller: controller,
        ),
      ),
      SliverFillRemaining(
        child: TabBarView(
          controller: controller,
          children: <Widget>[
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 13,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    height: 100,
                    color: Colors.green[100],
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        child: Text(
                          widget.weather.hourlyForcast.times[index],
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                          child: Image.asset(
                            widget.weather.hourlyForcast.icons[index],
                            scale: 20,
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
                          child: Text(
                            widget.weather.hourlyForcast.temperatures[index] +
                                "\u2103",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          )),
                    ]),
                  ),
                );
              },
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:16, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Precipitation probability",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 14),
                              ),
                              Text(
                                widget.weather.precipitationProbability,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Precipitation",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 14),
                              ),
                              Text(
                                widget.weather.precipitation,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Perceived Temperature",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 14),
                              ),
                              Text(
                                widget.weather.preceivedTemperature,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24, top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "WSD Wind",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 14),
                              ),
                              Text(
                                widget.weather.windSpeed,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "HUM",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 14),
                              ),
                              Text(
                                widget.weather.humidity,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24, top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Visibility",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 14),
                              ),
                              Text(
                                widget.weather.visibility,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "UV",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 14),
                              ),
                              Text(
                                widget.weather.uv,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24, top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Pressure",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 14),
                              ),
                              Text(
                                widget.weather.pressure,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

Map<String, Color> cardColorDependingOnDateMap = {
  "SUN": Colors.green[50],
  "MON": Colors.green[100],
  "TUE": Colors.green[200],
  "WED": Colors.green[300],
  "THU": Colors.green[400],
  "FRI": Colors.green,
  "SAT": Colors.green[600],
};
