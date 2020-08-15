import 'package:flutter/material.dart';
import 'package:weather_app/weather.dart';

class DetailedWeatherView extends StatefulWidget {
  final Weather weather;
  DetailedWeatherView(this.weather);
  @override
  _DetailedWeatherViewState createState() => _DetailedWeatherViewState();
}

class _DetailedWeatherViewState extends State<DetailedWeatherView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
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
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,

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
                                  widget.weather.precipitationProbability,
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
                                  widget.weather.precipitation,
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
                                  widget.weather.preceivedTemperature,
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
                                  widget.weather.windSpeed,
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
                                  widget.weather.humidity,
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
                                  widget.weather.visibility,
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
                                  widget.weather.uv,
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
                                  widget.weather.pressure,
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
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      )),
                    ),
                    Container(
                      height: 90,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 13,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white70,
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              ),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  child: Text(
                                    widget.weather.hourlyForcast.times[index],
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  ),
                                ),
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                    child: Image.asset(
                                      widget.weather.hourlyForcast.icons[index],
                                      scale: 20,
                                    )),
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 4, 8, 8),
                                    child: Text(
                                      widget.weather.hourlyForcast
                                              .temperatures[index] +
                                          " \u2103",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    )),
                              ]),
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
