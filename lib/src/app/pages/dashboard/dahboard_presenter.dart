import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:weather_app/src/domain/usecases/get_weathers_usecase.dart';

class DashBoardPresenter extends Presenter {
  Function getWeathersOnNext;
  Function getWeathersOnComplete;
  Function getWeathersOnError;

  final GetWeatherUseCase getWeatherUseCase;
  DashBoardPresenter(usersRepo) : getWeatherUseCase = GetWeatherUseCase(usersRepo);

  void getWeathers(String uid) {
    getWeatherUseCase.execute(
        _GetUserUseCaseObserver(this), GetWeatherUseCaseParams(uid));
  }

  @override
  void dispose() {
    getWeatherUseCase.dispose();
  }
}

class _GetUserUseCaseObserver extends Observer<GetWeatherUseCaseResponse> {
  final DashBoardPresenter presenter;
  _GetUserUseCaseObserver(this.presenter);
  @override
  void onComplete() {
    assert(presenter.getWeathersOnComplete != null);
    presenter.getWeathersOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getWeathersOnError != null);
    presenter.getWeathersOnError(e);
  }

  @override
  void onNext(response) {
    assert(presenter.getWeathersOnNext != null);
    presenter.getWeathersOnNext(response.weatherList);
  }
}
