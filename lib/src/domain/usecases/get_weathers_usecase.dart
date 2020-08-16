import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:weather_app/src/domain/entities/weather.dart';
import 'package:weather_app/src/domain/repositories/repository.dart';

class GetWeatherUseCase
    extends UseCase<GetWeatherUseCaseResponse, GetWeatherUseCaseParams> {
  final Repository usersRepository;
  GetWeatherUseCase(this.usersRepository);

  @override
  Future<Stream<GetWeatherUseCaseResponse>> buildUseCaseStream(
      GetWeatherUseCaseParams params) async {
    final controller = StreamController<GetWeatherUseCaseResponse>();
    try {
      final weatherList =
          await usersRepository.getAllWeathers(params.location);
      controller.add(GetWeatherUseCaseResponse(weatherList));
      controller.close();
    } catch (e) {
      controller.addError(e);
    }
    return controller.stream;
  }
}

class GetWeatherUseCaseParams {
  final String location;
  GetWeatherUseCaseParams(this.location);
}

class GetWeatherUseCaseResponse {
  final List<Weather> weatherList;
  GetWeatherUseCaseResponse(this.weatherList);
}
