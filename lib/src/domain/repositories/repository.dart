
import 'package:weather_app/src/domain/entities/weather.dart';

abstract class Repository {
  Future<List<Weather>> getAllWeathers(String locationId);
}
