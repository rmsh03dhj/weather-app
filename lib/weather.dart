import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/hourly_forcast.dart';

part 'weather.g.dart';

@JsonSerializable()
//@CustomDateTimeConverter()
class Weather {
  final String condition;
  final String icon;
  final String minTemp;
  final String maxTemp;
  final String day;
  final HourlyForcast hourlyForcast;
  final String humidity;
  final String chanceOfRain;
  final String windSpeed;
  final String rainFall;
  final String precipitation;
  final String visibility;
  final String pressure;
  final String uv;
  final String preceivedTemperature;
  final String precipitationProbability;


  const Weather({this.precipitation, this.visibility, this.pressure, this.uv, this.preceivedTemperature, this.precipitationProbability,
      this.hourlyForcast,
      this.humidity,
      this.chanceOfRain,
      this.windSpeed,
      this.condition,
      this.icon,
      this.minTemp,
      this.maxTemp,
      this.day,
      this.rainFall});

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

Map<String, dynamic> map = {
  "weather": [
    {
      "condition": "Sunny",
      "icon": "assets/icons/sunny.png",
      "day": "SUN",
      "minTemp": "11 C",
      "maxTemp": "17 C",
      "hourlyForcast": {
        "times": [
          "8am",
          "9am",
          "10am",
          "11am",
          "12pm",
          "1pm",
          "2pm",
          "3pm",
          "4pm",
          "5pm",
          "6pm",
          "7pm",
          "8pm"
        ],
        "icons": [
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png"
        ],
        "temperatures": [
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12"
        ]
      },
      "humidity": "78 %",
      "chanceOfRain": "10 %",
      "rainFall": "0mm",
      "precipitation": "0.0 mm",
      "visibility": "16.1 km",
      "pressure": "1006 hPa",
      "uv": "Lowest",
      "preceivedTemperature":"14",
      "precipitationProbability":"7 %",
      "windSpeed": "20.4 km/h"
    },
    {
      "condition": "Cloudy",
      "icon": "assets/icons/cloudy.png",
      "day": "MON",
      "minTemp": "11 C",
      "maxTemp": "17 C",
      "hourlyForcast": {
        "times": [
          "8am",
          "9am",
          "10am",
          "11am",
          "12pm",
          "1pm",
          "2pm",
          "3pm",
          "4pm",
          "5pm",
          "6pm",
          "7pm",
          "8pm"
        ],
        "icons": [
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png"
        ],
        "temperatures": [
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12"
        ]
      },
      "humidity": "78%",
      "chanceOfRain": "10%",
      "rainFall": "0mm",
      "precipitation": "0.0 mm",
      "visibility": "16.1 km",
      "pressure": "1006 hPa",
      "uv": "Lowest",
      "preceivedTemperature":"14",
      "precipitationProbability":"7 %",
      "windSpeed": "20.4 km/h"

    },
    {
      "condition": "Rainy",
      "icon": "assets/icons/rainy.png",
      "day": "TUE",
      "minTemp": "11 C",
      "maxTemp": "17 C",
      "hourlyForcast": {
        "times": [
          "8am",
          "9am",
          "10am",
          "11am",
          "12pm",
          "1pm",
          "2pm",
          "3pm",
          "4pm",
          "5pm",
          "6pm",
          "7pm",
          "8pm"
        ],
        "icons": [
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png"
        ],
        "temperatures": [
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12"
        ]
      },
      "humidity": "78%",
      "chanceOfRain": "10%",
      "rainFall": "0mm",
      "precipitation": "0.0 mm",
      "visibility": "16.1 km",
      "pressure": "1006 hPa",
      "uv": "Lowest",
      "preceivedTemperature":"14",
      "precipitationProbability":"7 %",
      "windSpeed": "20.4 km/h"

    },
    {
      "condition": "Sunny",
      "icon": "assets/icons/sunny.png",
      "day": "WED",
      "minTemp": "11 C",
      "maxTemp": "17 C",
      "hourlyForcast": {
        "times": [
          "8am",
          "9am",
          "10am",
          "11am",
          "12pm",
          "1pm",
          "2pm",
          "3pm",
          "4pm",
          "5pm",
          "6pm",
          "7pm",
          "8pm"
        ],
        "icons": [
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png"
        ],
        "temperatures": [
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12"
        ]
      },
      "humidity": "78%",
      "chanceOfRain": "10%",
      "rainFall": "0mm",
      "precipitation": "0.0 mm",
      "visibility": "16.1 km",
      "pressure": "1006 hPa",
      "uv": "Lowest",
      "preceivedTemperature":"14",
      "precipitationProbability":"7 %",
      "windSpeed": "20.4 km/h"

    },
    {
      "condition": "Partial Rain",
      "icon": "assets/icons/partial rainy.png",
      "day": "THU",
      "minTemp": "11 C",
      "maxTemp": "17 C",
      "hourlyForcast": {
        "times": [
          "8am",
          "9am",
          "10am",
          "11am",
          "12pm",
          "1pm",
          "2pm",
          "3pm",
          "4pm",
          "5pm",
          "6pm",
          "7pm",
          "8pm"
        ],
        "icons": [
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png"
        ],
        "temperatures": [
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12"
        ]
      },
      "humidity": "78%",
      "chanceOfRain": "10%",
      "rainFall": "0mm",
      "precipitation": "0.0 mm",
      "visibility": "16.1 km",
      "pressure": "1006 hPa",
      "uv": "Lowest",
      "preceivedTemperature":"14",
      "precipitationProbability":"7 %",
      "windSpeed": "20.4 km/h"

    },
    {
      "condition": "Partial Cloud",
      "icon": "assets/icons/partial sunny.png",
      "day": "FRI",
      "minTemp": "11 C",
      "maxTemp": "17 C",
      "hourlyForcast": {
        "times": [
          "8am",
          "9am",
          "10am",
          "11am",
          "12pm",
          "1pm",
          "2pm",
          "3pm",
          "4pm",
          "5pm",
          "6pm",
          "7pm",
          "8pm"
        ],
        "icons": [
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png"
        ],
        "temperatures": [
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12"
        ]
      },
      "humidity": "78%",
      "chanceOfRain": "10%",
      "rainFall": "0mm",
      "precipitation": "0.0 mm",
      "visibility": "16.1 km",
      "pressure": "1006 hPa",
      "uv": "Lowest",
      "preceivedTemperature":"14",
      "precipitationProbability":"7 %",
      "windSpeed": "20.4 km/h"

    },
    {
      "condition": "Sunny",
      "icon": "assets/icons/sunny.png",
      "day": "SAT",
      "minTemp": "11 C",
      "maxTemp": "17 C",
      "hourlyForcast": {
        "times": [
          "8am",
          "9am",
          "10am",
          "11am",
          "12pm",
          "1pm",
          "2pm",
          "3pm",
          "4pm",
          "5pm",
          "6pm",
          "7pm",
          "8pm"
        ],
        "icons": [
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png",
          "assets/icons/sunny.png"
        ],
        "temperatures": [
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12",
          "13",
          "12",
          "14",
          "11",
          "12",
          "12"
        ]
      },
      "humidity": "78%",
      "chanceOfRain": "10%",
      "rainFall": "0mm",
      "precipitation": "0.0 mm",
      "visibility": "16.1 km",
      "pressure": "1006 hPa",
      "uv": "Lowest",
      "preceivedTemperature":"14",
      "precipitationProbability":"7 %",
      "windSpeed": "20.4 km/h"
    }
  ]
};