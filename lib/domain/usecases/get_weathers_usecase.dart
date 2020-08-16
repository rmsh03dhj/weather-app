import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:weather_app/domain/entities/weather_entity.dart';
import 'package:weather_app/domain/repositories/weather_repository.dart';

class GetWeatherUseCase
    extends UseCase<GetWeatherUseCaseResponse, GetWeatherUseCaseParams> {
  final WeatherRepository usersRepository;
  GetWeatherUseCase(this.usersRepository);

  @override
  Future<Stream<GetWeatherUseCaseResponse>> buildUseCaseStream(
      GetWeatherUseCaseParams params) async {
    final controller = StreamController<GetWeatherUseCaseResponse>();
    try {
      final weatherEntities = await usersRepository.getAllWeathers(params.locationId);
      print(weatherEntities);
      // Adding it triggers the .onNext() in the `Observer`
      // It is usually better to wrap the reponse inside a respose object.
      controller.add(GetWeatherUseCaseResponse(weatherEntities));
      logger.finest('GetUserUseCase successful.');
      controller.close();
    } catch (e) {
      logger.severe('GetUserUseCase unsuccessful.');
      controller.addError(e);
    }
    return controller.stream;
  }
}

class GetWeatherUseCaseParams {
  final String locationId;
  GetWeatherUseCaseParams(this.locationId);
}

class GetWeatherUseCaseResponse {
  final List<WeatherEntity> weatherEntities;
  GetWeatherUseCaseResponse(this.weatherEntities);
}
