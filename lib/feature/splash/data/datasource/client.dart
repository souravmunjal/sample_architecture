import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sample_architecture/feature/splash/data/model/quote.dart';

class QuoteApiClient {
  final _baseUrl = 'https://quotes.rest/qod?language=en';
  final Client httpClient;
  QuoteApiClient({@required this.httpClient}) : assert(httpClient != null);
  Future<Quote> fetchQuote() async {
    final url = '$_baseUrl';
    final response = await this.httpClient.get(url);
    if (response.statusCode != 200) {
      throw new Exception('error getting quotes');
    }

    final json = jsonDecode(response.body);
    return Quote.fromJson(json);
  }
}
