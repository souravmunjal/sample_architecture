import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_architecture/feature/splash/bloc/splash_event.dart';
import 'package:sample_architecture/feature/splash/bloc/splash_state.dart';
import 'package:sample_architecture/feature/splash/data/model/quote.dart';
import 'package:sample_architecture/feature/splash/data/repositories/splash_repository.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashRepository repository;
  SplashBloc(SplashState initialState, this.repository) : super(initialState);

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    yield SplashLoading();
    try {
      if (event is CheckUserLoggedIn) {
        bool result = await repository.isUserLoggedIn();
        if (result == null) result = false;
        yield SplashSuccess(isUserLoggedIn: result);
      }else if (event is FetchData) {
        Quote quote = await repository.fetchQuote();
        if (quote == null) yield SplashError();
        yield FetchDataSuccessfull( quote);
      }

    } catch (_) {
      yield SplashError();
    }
  }
}
