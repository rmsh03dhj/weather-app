import 'package:flutter/material.dart';
import 'package:weather_app/src/app/utils.dart';
import 'package:weather_app/src/domain/entities/weather.dart';

class DetailedWeatherView extends StatefulWidget {
  static const String route = '/detailed_weather_page';
  @override
  _DetailedWeatherViewState createState() => _DetailedWeatherViewState();
}

class _DetailedWeatherViewState extends State<DetailedWeatherView> {

  @override
  Widget build(BuildContext context) {
    final Weather weather = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  expandedHeight: MediaQuery.of(context).size.height * 0.2,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text("Weather App",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          )),
                      background: Image.asset(
                        "assets/icons/weather.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.info), text: "Detailed Information"),
                        Tab(
                            icon: Icon(Icons.info_outline),
                            text: "Other Information"),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 8),
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
                                  weather.precipitationProbability,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
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
                                  weather.precipitation,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
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
                            padding: const EdgeInsets.only(left: 24, top:16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Perceived Temperature",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                                Text(
                                  weather.preceivedTemperature,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 24, top:16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "WSD Wind",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                                Text(
                                  weather.windSpeed,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
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
                            padding: const EdgeInsets.only(left: 24, top:16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HUM",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                                Text(
                                  weather.humidity,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 24, top:16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Visibility",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                                Text(
                                  weather.visibility,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
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
                            padding: const EdgeInsets.only(left: 24, top:16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "UV",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                                Text(
                                  weather.uv,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 24, top:16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Pressure",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                                Text(
                                  weather.pressure,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Container(height: 1, color: Colors.grey[600]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "Hourly Forcast",
                        style: TextStyle( fontSize: 16),
                      )),
                    ),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 13,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(2),
                            child: Card(
                              child: Container(
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                ),
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                    child: Text(
                                      weather.hourlyForcast.times[index],
                                      style: TextStyle(
                                          fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Icon(
                                          hourlyWeatherForcastIconMap[weather.hourlyForcast.weatherCondition[index]],
                                      ),
                                  ),
                                  Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 4),
                                      child: Text(
                                        weather.hourlyForcast
                                                .temperatures[index] +
                                            " \u2103",
                                        style: TextStyle(
                                            fontSize: 12),
                                      )),
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 8),
                      child: Container(height: 1, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  "Other Information",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ])),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
