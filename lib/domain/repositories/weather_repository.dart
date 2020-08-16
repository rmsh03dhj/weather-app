
import 'package:weather_app/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<List<WeatherEntity>> getAllWeathers(String locationId);
}
