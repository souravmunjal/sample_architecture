import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sample_architecture/feature/splash/data/model/quote.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

class SplashIdle extends SplashState {}

class SplashLoading extends SplashState {}

class SplashSuccess extends SplashState {
  final bool isUserLoggedIn;

  const SplashSuccess({@required this.isUserLoggedIn})
      : assert(isUserLoggedIn != null);

  @override
  List<Object> get props => [isUserLoggedIn];
}

class OnBoardingPendingState extends SplashState {}

class SplashError extends SplashState {}

class FetchDataSuccessfull extends SplashState {
  final Quote quote;

  FetchDataSuccessfull(this.quote);
}
