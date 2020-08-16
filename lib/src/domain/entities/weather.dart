import 'hourly_forcast.dart';

class Weather {
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
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;

  const Weather(
      {this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.precipitation,
      this.visibility,
      this.pressure,
      this.uv,
      this.preceivedTemperature,
      this.precipitationProbability,
      this.hourlyForcast,
      this.humidity,
      this.chanceOfRain,
      this.windSpeed,
      this.condition,
      this.minTemp,
      this.maxTemp,
      this.day,
      this.rainFall});

  Weather copyWith(
          {String condition,
          String minTemp,
          String maxTemp,
          String day,
          HourlyForcast hourlyForcast,
          String humidity,
          String chanceOfRain,
          String windSpeed,
          String rainFall,
          String precipitation,
          String visibility,
          String pressure,
          String uv,
          String preceivedTemperature,
          String precipitationProbability,
          String sunrise,
          String sunset,
          String moonrise,
          String moonset}) =>
      Weather(
          condition: condition ?? this.condition,
          minTemp: minTemp ?? this.minTemp,
          maxTemp: maxTemp ?? this.maxTemp,
          day: day ?? this.day,
          hourlyForcast: hourlyForcast ?? this.hourlyForcast,
          humidity: humidity ?? this.humidity,
          chanceOfRain: chanceOfRain ?? this.chanceOfRain,
          windSpeed: windSpeed ?? this.windSpeed,
          rainFall: rainFall ?? this.rainFall,
          precipitation: precipitation ?? this.precipitation,
          visibility: visibility ?? this.visibility,
          pressure: pressure ?? this.pressure,
          uv: uv ?? this.uv,
          preceivedTemperature:
              preceivedTemperature ?? this.preceivedTemperature,
          precipitationProbability:
              precipitationProbability ?? this.precipitationProbability,
          sunrise: sunrise ?? this.sunrise,
          sunset: sunset ?? this.sunset,
          moonrise: moonrise ?? this.moonrise,
          moonset: moonset ?? this.moonset);
}
