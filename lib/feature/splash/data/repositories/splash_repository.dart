import 'package:sample_architecture/core/shared_preferences/shared_preferences_data.dart';
import 'package:sample_architecture/feature/splash/data/datasource/client.dart';
import 'package:sample_architecture/feature/splash/data/model/quote.dart';

class SplashRepository {
  final QuoteApiClient quoteApiClient;
  SplashRepository(this.quoteApiClient);

  Future<bool> isUserLoggedIn() async {
    return await SharedPreferencesData.checkIfUserLoggedIn() as bool;
  }

  Future<bool> isOnBoardingDone() async {
    return await true;
  }

  Future<Quote> fetchQuote() async {
    return await quoteApiClient.fetchQuote();
  }
}
