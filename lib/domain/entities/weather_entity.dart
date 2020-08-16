import '../../hourly_forcast.dart';

class WeatherEntity {
  final String condition;
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


  const WeatherEntity(
      {this.precipitation, this.visibility, this.pressure, this.uv, this.preceivedTemperature, this.precipitationProbability,
        this.hourlyForcast,
        this.humidity,
        this.chanceOfRain,
        this.windSpeed,
        this.condition,
        this.minTemp,
        this.maxTemp,
        this.day,
        this.rainFall});
}

Map<String, dynamic> map = {
  "weather": [

    {
      "condition": "heavyCloud",
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
      "condition": "heavyRain",
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
      "condition": "heavyCloud",
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
      "condition": "heavyRain",
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
      "condition": "clear",
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
      "condition": "clear",
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
