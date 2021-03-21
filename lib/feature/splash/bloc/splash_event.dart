import 'package:equatable/equatable.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();
  @override
  List<Object> get props => [];
}

class CheckUserLoggedIn extends SplashEvent {
  const CheckUserLoggedIn();
}

class CheckIfOnBoardingDone extends SplashEvent {}

class FetchData extends SplashEvent{
}
